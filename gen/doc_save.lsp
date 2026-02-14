(:файл "doc_save"
 :функции
       (

;; Функция BRST_Doc_SaveToStream
(:название "Doc_SaveToStream"
   :группа "doc"
   :ошибки ()
   :результат (:тип "STATUS"
  	           :ru ":return_ok"
               :en ":return_ok")
   :ru ""
   :en ""
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")))

;; Функция BRST_Doc_SaveToFile
(:название "Doc_SaveToFile"
   :группа "doc"
   :ошибки ()
   :результат (:тип "STATUS"
  	           :ru ":return_ok"
               :en ":return_ok")
   :ru "Сохраняет документ в файл."
   :en "Save document to file."
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
            (:тип "CSTR"
            :имя "filename"
            :ru "Имя сохраняемого файла."
            :en "Saved file name.")
            ))))
