(:файл "doc_compression"
 :функции
       ((:название "Doc_SetCompressionMode"
         :ru "Устанавливает режим компрессии документа."
         :en "Set document compression mode."
     :группа "doc"
     :параметры ((:тип "Doc"
                  :имя "pdf"
                  :ru ":param_pdf"
                  :en ":param_pdf")
                 (:тип "CompressionMode"
                   :имя "mode"
                   :ru "Режим компрессии документа"
                   :en "Document compression mode"))
	 :результат (:тип "STATUS"
		     :ru ":return_ok"
		     :en ":return_ok"))))
