(:файл "doc_font"
 :функции (
            ;; BRST_Doc_Font
           (:название "Doc_Font"
            :группа "font"
            :ru "Получает запрошенный описатель объекта шрифта."
            :en "Get requested font object handle."
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "font_name"
                         :ru "Корректное название шрифта"
                         :en "Valid font name")
                        (:тип "CSTR"
                         :имя "encoding_name"
                         :ru "Корректное название кодировки"
                         :en "Valid encoding name"))
            :результат (:тип "Font"
                        :ru "Описатель объекта шрифта при успехе, в противном случае возвращает \\c NULL и вызывает обработчик ошибок."
                        :en "Font object handle on success, otherwise returns \\c NULL and calls error handler.")
            :ошибки ("INVALID_DOCUMENT"
                     "FAILED_TO_ALLOC_MEM"
                     "INVALID_FONT_NAME"
                     "INVALID_ENCODING_NAME"
                     "UNSUPPORTED_FONT_TYPE"))

           ;; BRST_Doc_TTFont_LoadFromFile
           (:название "Doc_TTFont_LoadFromFile"
            :группа "font"
            :ru "Получает запрошенный описатель объекта шрифта."
            :en "Get requested font object handle."
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "filename"
                         :ru "Путь до файла шрифта TrueType (`.ttf`)"
                         :en "Path of TrueType font file (`.ttf`)")
                        (:тип "BOOL"
                         :имя "embedding"
                         :ru "Если этот параметр равен \\ref BRST_TRUE, данные о глифах шрифта встраиваются в PDF-файл, иначе в PDF-файл включаются только матричные данные."
                         :en "If this parameter is set to \\ref BRST_TRUE, the glyph data of the font is included to PDF file, otherwise only the matrix data is included to PDF file."))
            :результат (:тип "Font"
                        :ru "Наименование (идентификатор) шрифта при успехе, в противном случае возвращается \\c NULL и вызывается обработчик ошибок."
                        :en "Name of the font on success, otherwise, it returns \\c NULL and calls error handler.")
            :см ("fonts")
            :ошибки ("INVALID_DOCUMENT"
                     "FAILED_TO_ALLOC_MEM"
                     "FONT_EXISTS"
                     "INVALID_TTC_INDEX"
                     "INVALID_TTC_FILE"
                     "TTF_INVALID_CMAP"
                     "TTF_INVALID_FORMAT"
                     "TTF_MISSING_TABLE"
                     "TTF_CANNOT_EMBEDDING_FONT"))

 ;; BRST_Doc_Type1Font_LoadFromFile
 (:название "Doc_Type1Font_LoadFromFile"
            :ru "Загрузка шрифта формата Type1 из внешнего файла и регистрация шрифта в документе."
            :en "Load Type1 font from external file and register it in the document object."
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "afm_filename"
                         :ru "Путь к файлу AFM"
                         :en "Path of AFM file")
                        (:тип "CSTR"
                         :имя "data_filename"
                         :ру "Путь к файлу PFA/PFB"
                         :en "Path of PFA/PFB file"))
            :результат (:тип "CSTR"
                        :ru "Наименование (идентификатор) шрифта при успехе, в противном случае возвращается \\c NULL и вызывается обработчик ошибок."
                        :en "Name of the font on success, otherwise, it returns \\c NULL and calls error handler."))

           ;; BRST_Doc_TTFont_LoadFromFile2
           (:название "Doc_TTFont_LoadFromFile2"
            :ru "Загрузка TrueType-шрифта из коллекции (*.ttc)"
            :en "Load TrueType font from TrueType Collection file (*.ttc) and register it in the document object"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "CSTR"
                         :имя "filename"
                         :ru "Путь к файлу коллекции (*.ttc)"
                         :en "Path of TrueType Collection file (*.ttc)")
                        (:тип "UINT"
                         :имя "index"
                         :ru "Номер шрифта в коллекции"
                         :en "Index of font in collection to be loaded")
                        (:тип "BOOL"
                         :имя "embedding"
                         :ru "Если этот параметр равен \\ref BRST_TRUE, данные о глифах шрифта встраиваются в PDF-файл, иначе в PDF-файл включаются только матричные данные."
                         :en "If this parameter is set to \\ref BRST_TRUE, the glyph data of the font is included to PDF file, otherwise only the matrix data is included to PDF file."))
            :результат (:тип "CSTR"
                        :ru "Наименование (идентификатор) шрифта при успехе, в противном случае возвращается \\c NULL и вызывается обработчик ошибок."
                        :en "Name of the font on success, otherwise, it returns \\c NULL and calls error handler."))

           ;; BRST_Doc_TTFont_LoadFromMemory
           (:название "Doc_TTFont_LoadFromMemory"
            :ru "Загрузка TrueType-шрифта из буфера памяти"
            :en "Load TrueType font from memory buffer and register it in the document object"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "BYTE*"
                         :имя "buffer"
                         :ru "Буфер с содержимым TrueType-шрифта."
                         :en "Buffer containing TrueType font bytes")
                        (:тип "UINT"
                         :имя "size"
                         :ru "Размер буфера"
                         :en "Size of buffer")
                        (:тип "BOOL"
                         :имя "embedding"
                         :ru "Если этот параметр равен \\ref BRST_TRUE, данные о глифах шрифта встраиваются в PDF-файл, иначе в PDF-файл включаются только матричные данные."
                         :en "If this parameter is set to \\ref BRST_TRUE, the glyph data of the font is included to PDF file, otherwise only the matrix data is included to PDF file."))
            :результат (:тип "CSTR"
                        :ru "Наименование (идентификатор) шрифта при успехе, в противно случае возвращается \\c NULL и вызывается обработчик ошибок."
                        :en ":return_font_name_or_null"))))

