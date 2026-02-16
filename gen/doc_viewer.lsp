(:файл "doc_viewer"
 :функции
       (
        ;; BRST_Doc_SetOpenAction
        (:название "Doc_SetOpenAction" 
         :ru "Задать первую страницу при открытии документа."
         :en "Set the first page to appear when a document is opened."
         :параметры ((:тип "Doc"
                      :имя "pdf"
                      :ru ":param_pdf"
                      :en ":param_pdf")
                     (:тип "Destination"
                      :имя "open_action"
                      :ру "Действие открытия страницы"
                      :en "Set a valid destination object."))
         :результат (:тип "STATUS"
                     :ru ":return_ok"
                     :en ":return_ok"))

        ;; BRST_Doc_ViewerPreference
        (:название "Doc_ViewerPreference" 
         :ru "Получение предпочтений просмотра документа."
         :en "Get viewer preferences of a document."
         :параметры ((:тип "Doc"
                      :имя "pdf"
                      :ru ":param_pdf"
                      :en ":param_pdf"))
         :результат (:тип "ViewerPreference"
                     :ru "Набор предпочтений программы просмотра."
                     :en "Viewer preferences of a document"))

        ;; BRST_Doc_SetViewerPreference
        (:название "Doc_SetViewerPreference" 
         :ru "Установить предпочтения просмотра документа"
         :en "Set viewer preferences of document"
         :параметры ((:тип "Doc"
                      :имя "pdf"
                      :ru ":param_pdf"
                      :en ":param_pdf")
                     (:тип "ViewerPreference"
                      :имя "value"
                      :ру "Значение параметра"
                      :en "Viewer preference value"))
         :результат (:тип "STATUS"
                     :ru ":return_ok"
                     :en ":return_ok"))
        ))
