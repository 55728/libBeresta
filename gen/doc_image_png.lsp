(:файл "doc_image_png"
 :функции (
           (:название "Doc_Image_Png_LoadFromMem"
            :ru "Загрузить изображение формата PNG из буфера памяти"
            :en "Load PNG image from buffer"
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

           (:название "Doc_Image_Png_LoadFromFile"
            :ru "Загрузить файл формата PNG"
            :en "Load external PNG image file"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "filename"
                         :ru "Путь к файлу формата PNG"
                         :en "Path to PNG image file"))
            :результат (:тип "Image"
                        :ru ":param_image"
                        :en ":param_image"))

           (:название "Doc_Image_Png_LoadFromFile2"
            :ru "Асинхронная загрузка файла формта PNG"
            :en "Asynchronous loading of external PNG image file"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "filename"
                         :ru "Путь к файлу формата PNG"
                         :en "Path to PNG image file"))
            :результат (:тип "Image"
                        :ru ":param_image"
                        :en ":param_image"))
           ))

