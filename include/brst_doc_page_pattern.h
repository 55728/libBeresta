#ifndef BRST_DOC_PAGE_PATTERN_H
#define BRST_DOC_PAGE_PATTERN_H

BRST_EXPORT(BRST_Pattern)
BRST_Doc_Page_Pattern_Tiling_Create(
    BRST_Doc    pdf,
    BRST_Page   page,
    BRST_REAL   left,
    BRST_REAL   bottom,
    BRST_REAL   right,
    BRST_REAL   top,
    BRST_REAL   xstep,
    BRST_REAL   ystep,
    BRST_Matrix matrix
);

BRST_EXPORT(BRST_Stream)
BRST_Doc_Page_Pattern_Stream(BRST_Pattern pat);

BRST_EXPORT(BRST_Stream)
BRST_Doc_Dict_Pattern_Stream(BRST_Pattern pat);

BRST_EXPORT(BRST_STATUS)
BRST_Doc_Dict_RGBPatternFill_Select(
    BRST_Doc  pdf,
    BRST_Dict dict,
    BRST_REAL r,
    BRST_REAL g,
    BRST_REAL b,
    BRST_Pattern pattern
);

BRST_EXPORT(BRST_STATUS)
BRST_Doc_Page_RGBPatternFill_Select(
    BRST_Doc  pdf,
    BRST_Page page,
    BRST_REAL r,
    BRST_REAL g,
    BRST_REAL b,
    BRST_Pattern pattern
);

BRST_EXPORT(BRST_STATUS)
BRST_Doc_Dict_RGBPatternFillUint_Select(
    BRST_Doc     pdf,
    BRST_Dict    dict,
    BRST_UINT8   r,
    BRST_UINT8   g,
    BRST_UINT8   b,
    BRST_Pattern pattern);

BRST_EXPORT(BRST_STATUS)
BRST_Doc_Page_RGBPatternFillUint_Select(
    BRST_Doc     pdf,
    BRST_Page    page,
    BRST_UINT8   r,
    BRST_UINT8   g,
    BRST_UINT8   b,
    BRST_Pattern pattern);

BRST_EXPORT(BRST_STATUS)
BRST_Doc_Dict_RGBPatternFillHex_Select(
    BRST_Doc     pdf,
    BRST_Dict    dict,
    BRST_UINT32  rgb,
    BRST_Pattern pattern);

BRST_EXPORT(BRST_STATUS)
BRST_Doc_Page_RGBPatternFillHex_Select(
    BRST_Doc     pdf,
    BRST_Dict    dict,
    BRST_UINT32  rgb,
    BRST_Pattern pattern);

#endif /* BRST_DOC_PAGE_PATTERN_H */
