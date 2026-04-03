(:файл "doc_xobject"
 :группа "doc"
 :функции (
	   ;; BRST_Doc_XObject_CreateFromImage
	   (:название "Doc_XObject_CreateFromImage" 
            :ru "Создание XObject из изображения"
            :en "Create XObject from an image"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
			(:тип "Rect"
                         :имя "rect"
                         :ru "Прямоугольник размещения"
                         :en "Rectangle position")
			(:тип "Image"
                         :имя "image"
                         :ru "Изображение"
                         :en "Source image")
			(:тип "BOOL"
                         :имя "zoom"
                         :ру "Флаг масштабирования"
                         :en "Zoom flag"))
            :результат (:тип "XObject"
                        :ru ":param_xobject"
                        :en ":param_xobject"))

	   ;; BRST_Doc_XObject_CreateAsWhiteRect
	   (:название "Doc_XObject_CreateAsWhiteRect" 
            :ru "Создать белый прямоугольник XObject"
            :en "Create white rectangle as XObject"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
			(:тип "Rect"
                         :имя "rect"
                         :ru "Размеры белого прямоугольника"
                         :en "Dimensions of the white rectangle"))
            :результат (:тип "XObject"
                        :ru ":param_xobject"
                        :en ":param_xobject"))

	   ;; BRST_Doc_XObject_Create
	   (:название "Doc_XObject_Create"
            :группа "doc"
            :ru "Создание объекта XObject Form"
            :en "XObject Form object creation"
            :см ("Page_XObject_Execute()"
                 "Page_DrawImage()"
                 "Page_GSave()"
                 "Page_GRestore()"
                 "Page_Concat()"
                 "XObject_Stream()")
            :результат (:тип "XObject"
                        :ru ":param_xobject"
                        :en ":param_xobject")
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "REAL"
                         :имя "width"
                         :ru "Ширина XObject в логических единицах"
                         :en "XObject logical width")
                        (:тип "REAL"
                         :имя "height"
                         :ru "Высота XObject в логических единицах"
                         :en "XObject logical height")
                        (:тип "REAL"
                         :имя "scalex"
                         :ru "Горизонтальное соотношение единиц в XObject и в документе"
                         :en "XObject horizontal logical unit scale")
                        (:тип "REAL"
                         :имя "scaley"
                         :ru "Вертикальное соотношение единиц в XObject и в документе"
                         :en "XObject vertical logical unit scale")
                        ))))
