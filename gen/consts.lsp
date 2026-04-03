(:файл "consts"
 :константы ((:имя "TRUE"  :значение "1" :ru "Истина" :en "Truth")
             (:имя "FALSE" :значение "0" :ru "Ложь" :en "False")
             (:имя "OK"    :значение "0" :ru "Ошибок нет" :en "No errors")
             (:имя "PI"    :значение "3.14159265358979323846" :ru "Число Пи" :en "Pi number")
             (:имя "MM"    :значение "2.834646" :ru "Предопределенное значение для вычислений в миллиметрах, равно 72.0/25.4 (72 точки на дюйм на мм)" 
              :en "Predefined value for calculations in millimeters, equals to 72.0/25.4 (72 points per inch per mm)")
             (:имя "IN"    :значение "72.00000" :ru "Предопределенное значение для вычислений в дюймах (72 точки на дюйм)" 
              :en "Predefined value for calculations in inches, equals to 72 points per inch"))

 :перечисления
       ((:имя "CompressionMode"
         :ru "Режим компрессии документа"
         :en "Document compression mode"
         :элементы ((:элемент "COMP_MODE_NONE"
                     :ru "Без компрессии"
                     :en "No compression"
                     :значение "0x00")
                    (:элемент "COMP_MODE_TEXT"
                     :ru "Сжимать текстовые словари"
                     :en "Compress text dictionaries"
                     :значение "0x01")
                    (:элемент "COMP_MODE_IMAGE"
                     :ru "Сжимать изображения"
                     :en "Compress images"
                     :значение "0x02")
                    (:элемент "COMP_MODE_METADATA"
                     :ru "Сжимать вложенные данные (только шрифты)"
                     :en "Compress nested metadata (fonts only)"
                     :значение "0x04")
                    (:элемент "COMP_MODE_ALL"
                     :ru "Сжимать всё"
                     :en "Compress everything"
                     :значение "0x0F")))
        (:имя "Permission"
         :ru "Разрешения документа."
         :en "Document permissions."
         :элементы ((:элемент "ENABLE_READ"
                     :ru "Пользователь может читать документ."
                     :en "User can read the document."
                     :значение 0)
                    (:элемент "ENABLE_PRINT"
                     :ru "Пользователь может распечатать документ."
                     :en "User can print the document."
                     :значение 4)
                    (:элемент "ENABLE_EDIT_ALL"
                     :ru "Пользователь может править содержимое документа (не только примечания и поля форм)."
                     :en "User can edit the contents of the document other than annotations and form fields."
                     :значение 8)
                    (:элемент "ENABLE_COPY"
                     :ru "Пользователь может компировать текст и изображения документа."
                     :en "User can copy the text and the graphics of the document."
                     :значение 16)
                    (:элемент "ENABLE_EDIT"
                     :ru "Пользователь может добавлять или изменять примечания и поля форм документа."
                     :en "User can add or modify the annotations and form fields of the document."
                     :значение 32)))
        (:имя "ViewerPreference"
         :ru "Настройки программы просмотра"
         :en "Viewer preference values"
         :элементы ((:элемент "HIDE_TOOLBAR"
                     :ru "Флаг, определяющий необходимость скрытия панелей инструментов программы просмотра при отображении документа."
                     :en "A flag specifying whether to hide reader's tool bars when the document is active."
                     :значение "1")

                    (:элемент "HIDE_MENUBAR"
                     :ru "Флаг, определяющий необходимость скрытия меню программы просмотра при отображении документа."
                     :en "A flag specifying whether to hide reader's menu bar when the document is active."
                     :значение "2")

                    (:элемент "HIDE_WINDOW_UI"
                     :ru "Флаг, определяющий необходимость скрытия элементов управления окном документа."
                     :en "A flag specifying whether to hide user interface elements in the document's window, leaving only the document's contents displayed"
                     :значение "4")

                    (:элемент "FIT_WINDOW"
                     :ru "Флаг, определяющий необходимость масштабирования размера окна для размещения первой отображаемой страницы."
                     :en "A flag specifying whether to resize the document's window to fit the size of the first displayed page."
                     :значение "8")

                    (:элемент "CENTER_WINDOW"
                     :ru "Флаг, определяющий необходимость размещения окна в центре экрана."
                     :en "A flag specifying whether to position the document's window in the center of the screen."
                     :значение "16")

                    (:элемент "PRINT_SCALING_NONE"
                     :версия "1.6"
                     :ru "Значение масштаба страницы при печати документа не задается. Если флаг не установлен, программа просмотра задает значение самостоятельно."
                     :en "The page scaling option is set to None when a print dialog is displayed for this document."
                     :значение "32")

                    (:элемент "DISPLAY_DOC_TITLE"
                     :версия "1.4"
                     :en "A flag specifying whether the window's title bar should display the document title taken from the \\c Title entry of the document information dictionary."
                     :ru "Флаг, определяющий использование поля \\c Title из информационного словаря документа для заголовка окна. Если флаг не задан, в заголовке окна показывается имя файла."
                     :значение "64")
                    ))))