(:файл "doc_security"
 :функции (
           ;; BRST_Doc_SetPassword
           (:название "Doc_SetPassword" 
            :ru "Установить пароли документа."
            :en "Set document passwords."
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "owner_password"
                         :ru "Пароль владельца документа."
                         :en "Owner password of the document.")
                        (:тип "CSTR"
                         :имя "user_password"
                         :ру "Пользовательский пароль"
                         :en "User password of the document."))
            :результат (:тип "STATUS"
                        :ru ":return_ok"
                        :en ":return_ok"))

           ;; BRST_Doc_SetPermission
           (:название "Doc_SetPermission" 
            :ru "Установить права доступа к документу."
            :en "Set document permission flags."
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "Permission"
                         :имя "permission"
                         :ru "Флаги разрешений"
                         :en "Permission flags."))
            :результат (:тип "STATUS"
                        :ru ":return_ok"
                        :en ":return_ok"))

           ;; BRST_Doc_SetEncryptionMode
           (:название "Doc_SetEncryptionMode" 
            :ru "Установить режим шифрования"
            :en "Set the encryption mode."
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "EncryptMode"
                         :имя "mode"
                         :ru "Режим шифрования"
                         :en "Encryption mode.")
                        (:тип "UINT"
                         :имя "key_len"
                         :ru "Длина ключа шифрования"
                         :en "Length of encryption key."))
            :результат (:тип "STATUS"
                        :ru ":return_ok"
                        :en ":return_ok"))
           ))
