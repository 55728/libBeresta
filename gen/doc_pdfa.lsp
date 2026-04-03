(:файл "doc_pdfa"
 :функции (
           ;; BRST_Doc_PDFA_SetConformance
           (:название "Doc_PDFA_SetConformance" 
            :ru "Установить уровень соответствия PDF/A"
            :en "Set PDF/A conformance level"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "PDFAType"
                         :имя "pdfa_type"
                         :ru "Тип стандарта PDF/A"
                         :en "PDFA standard type"))
            :результат (:тип "STATUS"
                        :ru ":return_ok"
                        :en ":return_ok"))

           ;; BRST_Doc_PDFA_AddXmpExtension
           (:название "Doc_PDFA_AddXmpExtension" 
            :ru "Добавление расширения метаданных XMP"
            :en "Add XMP metadata extension"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "xmp_description"
                         :ru "Описание метаданных XMP"
                         :en "XMP metadata description"))
            :результат (:тип "STATUS"
                        :ru ":return_ok"
                        :en ":return_ok"))

           ;; BRST_Doc_PDFA_AppendOutputIntents
           (:название "Doc_PDFA_AppendOutputIntents" 
            :ru "Добавить профиль вывода ICC"
            :en "Append output intent profile"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "iccname"
                         :ru "Имя профиля ICC"
                         :en "ICC profile name")
                        (:тип "Dict"
                         :имя "iccdict"
                         :ru "Параметры профиля ICC"
                         :en "ICC profile parameters dictionary"))
            :результат (:тип "STATUS"
                        :ru ":return_ok"
                        :en ":return_ok"))))
