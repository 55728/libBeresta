(:файл "structs"
 :структуры ((:имя "Point"
              :en "Point position on a page" :ru "Положение точки на странице"
              :поля ((:поле "x" :тип "REAL" :en "" :ru "")
                     (:поле "y" :тип "REAL" :en "" :ru "")))
             (:имя "Rect"
              :en "" :ru ""
              :поля ((:поле "left"   :тип "REAL" :en "" :ru "")
                     (:поле "bottom" :тип "REAL" :en "" :ru "")
                     (:поле "right"  :тип "REAL" :en "" :ru "")
                     (:поле "top"    :тип "REAL" :en "" :ru ""))))
    BRST_REAL left;
    BRST_REAL bottom;
    BRST_REAL right;
    BRST_REAL top;

)