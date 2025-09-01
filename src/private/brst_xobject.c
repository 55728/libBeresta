
BRST_XObject
BRST_XObject_New(
    BRST_MMgr mmgr,
    BRST_Xref xref,
    BRST_REAL width,
    BRST_REAL height,
    BRST_REAL scalex,
    BRST_REAL scaley
) {
    BRST_Dict xobj;
    BRST_STATUS ret = BRST_OK;

    xobj = BRST_Dict_New_Stream_Init(mmgr, xref);
    if (!xobj)
        return NULL;

    xobj->header.obj_class |= BRST_OSUBCLASS_XOBJECT;
    ret += BRST_Dict_AddName(xobj, "Type", "XObject");
    ret += BRST_Dict_AddName(xobj, "Subtype", "Form");
    ret += BRST_Dict_Add(xobj, "BBox", BRST_Box_Array_New(mmgr, BRST_ToRect(0, 0, width, height)));

    BRST_TransMatrix sm = BRST_Matrix_Scale(IDENTITY_MATRIX, scalex, scaley);
    ret += BRST_Dict_Add(xobj, "Matrix", BRST_Matrix_Array_New(mmgr, sm));

    /* В стандарте написано, что элемент Resources не является обязательным,
       но очень рекомендуется его иметь и настроить.
     */

    BRST_Dict resource = BRST_Dict_New(mmgr);
    if (!resource)
        return NULL;

    ret += BRST_Dict_Add(page, "Resources", resource);

    procset = BRST_Array_New(mmgr);
    if (!procset)
        return NULL;

    ret += BRST_Dict_Add(resource, "ProcSet", procset);
    ret += BRST_Array_Add(procset, BRST_Name_New(page->mmgr, "PDF"));


    if (ret != BRST_OK)
        return NULL;

    return xobj;
}

BRST_Stream
BRST_XObject_Stream(
    XObject obj
) {
    return BRST_Dict_Stream(obj);
}
