(:файл "doc_image_jpeg"
 :функции (
           ;; BRST_Doc_Image_Jpeg_LoadFromFile
           (:название "Doc_Image_Jpeg_LoadFromFile"
            :ru "Загружает файл формата JPEG"
            :en "Load external JPEG image file"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "filename"
                         :ru "Путь к файлу формата JPEG"
                         :en "Path to JPEG image file"))
            :результат (:тип "Image"
                        :ru ":param_image"
                        :en ":param_image"))
           ;; BRST_Doc_Image_Jpeg_LoadFromMem
           (:название "Doc_Image_Jpeg_LoadFromMem"
            :ru "Загружает изображение формата JPEG из буфера памяти."
            :en "Load JPEG image from buffer"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "BYTE*"
                         :имя "buf"
                         :ru "Указатель на данные изображения"
                         :en "Pointer to the image data")
                        (:тип "UINT"
                         :имя "size"
                         :ru "Размер данных в буфере"
                         :en "Size of the data in buffer"))
            :результат (:тип "Image"
                        :ru ":param_image"
                        :en ":param_image")) 
           ))

