(:файл "doc_image_tiff"
 :функции (

(:название "Doc_Image_Raw1Bit_LoadFromMem"
          :ru "Загрузка 1-битного RAW изображения из буфера памяти"
          :en "Load RAW 1-bit image from memory buffer"
          :параметры ((:тип "Doc"
                       :имя "pdf"
                       :ru ":param_pdf"
                       :en ":param_pdf")
                      (:тип "BYTE*"
                       :имя "buf"
                       :ru "Указатель на буфер данных изображения"
                       :en "Pointer to image data buffer")
                      (:тип "UINT"
                       :имя "width"
                       :ru "Ширина изображения"
                       :en "Width of image")
                      (:тип "UINT"
                       :имя "height"
                       :ru "Высота изображения"
                       :en "Height of image")
                      (:тип "UINT"
                       :имя "line_width"
                       :ru "Длина строки пикселей"
                       :en "Line width of pixels")
                      (:тип "BOOL"
                       :имя "black_is1"
                       :ru "Черный представлен `1`"
                       :en "Black represented by `1`")
                      (:тип "BOOL"
                       :имя "top_is_first"
                       :ru "Первая строка сверху"
                       :en "First row starts from top"))
          :результат (:тип "Image"
                     :ru ":param_image"
                     :en ":param_image"))

(:название "Doc_Image_Raw_LoadFromFile"
          :ru "Загрузка RAW изображения из файла"
          :en "Load RAW format image from file"
          :параметры ((:тип "Doc"
                       :имя "pdf"
                       :ru ":param_pdf"
                       :en ":param_pdf")
                      (:тип "CSTR"
                       :имя "filename"
                       :ru "Путь к файлу изображения"
                       :en "Path to image file")
                      (:тип "UINT"
                       :имя "width"
                       :ru "Ширина изображения"
                       :en "Width of image")
                      (:тип "UINT"
                       :имя "height"
                       :ru "Высота изображения"
                       :en "Height of image")
                      (:тип "ColorSpace"
                       :имя "color_space"
                       :ru "Цветовое пространство (\ref BRST_CS_DEVICE_GRAY, \ref BRST_CS_DEVICE_RGB, \ref BRST_CS_DEVICE_CMYK)"
                       :en "One of \ref BRST_CS_DEVICE_GRAY, \ref BRST_CS_DEVICE_RGB or \ref BRST_CS_DEVICE_CMYK values"))
          :результат (:тип "Image"
                     :ru ":param_image"
                     :en ":param_image"))

(:название "Doc_Image_Raw_LoadFromMem"
          :ru "Загрузка изображения RAW из буфера памяти"
          :en "Load RAW format image from memory buffer"
          :параметры ((:тип "Doc"
                       :имя "pdf"
                       :ru ":param_pdf"
                       :en ":param_pdf")
                      (:тип "BYTE*"
                       :имя "buf"
                       :ru "Указатель на буфер данных изображения"
                       :en "Pointer to image data buffer")
                      (:тип "UINT"
                       :имя "width"
                       :ru "Ширина изображения"
                       :en "Width of image")
                      (:тип "UINT"
                       :имя "height"
                       :ru "Высота изображения"
                       :en "Height of image")
                      (:тип "ColorSpace"
                       :имя "color_space"
                       :ru "Цветовое пространство (\\ref BRST_CS_DEVICE_GRAY, \\ref BRST_CS_DEVICE_RGB, \\ref BRST_CS_DEVICE_CMYK)"
                       :en "One of \\ref BRST_CS_DEVICE_GRAY, \\ref BRST_CS_DEVICE_RGB or \\ref BRST_CS_DEVICE_CMYK values")
                      (:тип "UINT"
                       :имя "bits_per_component"
                       :ru "Количество бит на канал (возможные значения: `1`, `2`, `4`, `8`)"
                       :en "Bits per color component (valid values: `1`, `2`, `4`, `8`)"))
          :результат (:тип "Image"
                     :ru ":param_image"
                     :en ":param_image"))
           ))

