(:файл "doc_pattern"
 :функции (
           ;; BRST_Doc_Pattern_Tiling_Create
           (:название "Doc_Pattern_Tiling_Create" 
            :ru "Создание узора-плитки"
            :en "Create tiled pattern"
            :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf")
                        (:тип "REAL"
                         :имя "left"
                         :ru "Координата левой границы"
                         :en "Left boundary coordinate")
                        (:тип "REAL"
                         :имя "bottom"
                         :ru "Координата нижней границы"
                         :en "Bottom boundary coordinate")
                        (:тип "REAL"
                         :имя "right"
                         :ru "Координата правой границы"
                         :en "Right boundary coordinate")
                        (:тип "REAL"
                         :имя "top"
                         :ru "Координата верхней границы"
                         :en "Top boundary coordinate")
                        (:тип "REAL"
                         :имя "xstep"
                         :ru "Шаг повторения по горизонтали"
                         :en "Horizontal repetition step")
                        (:тип "REAL"
                         :имя "ystep"
                         :ru "Шаг повторения по вертикали"
                         :en "Vertical repetition step")
                        (:тип "Matrix"
                         :имя "matrix"
                         :ru "Матрица преобразований"
                         :en "Transformation matrix"))
            :результат (:тип "Pattern"
                        :ru ":param_pattern"
                        :en ":param_pattern"))

           ;; BRST_Doc_Pattern_Stream
           (:название "Doc_Pattern_Stream" 
            :ru "Получение потока узора"
            :en "Get stream associated with a pattern"
            :параметры ((:тип "Pattern"
                         :имя "pat"
                         :ru "Объект узора"
                         :en "Pattern object"))
            :результат (:тип "Stream"
                        :ru ":param_stream"
                        :en ":param_stream"))))
