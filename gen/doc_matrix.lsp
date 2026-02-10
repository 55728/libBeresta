(:файл "doc_matrix"
 :функции ((:название "Doc_Matrix_Identity"
	    :ru "Создается единичная матрица преобразований."
	    :en "Create identity transformation matrix."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf"))) 
	   (:название "Doc_Matrix_Free"
	    :ru "Высвобождение памяти, занятой матрицей преобразований."
	    :en "Free transformation matrix memory."
	    :результат (:тип "void"
			:ru "Нет"
			:en "No")
	    :параметры ((:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix"))) 
	   
	   (:название "Doc_Matrix_Multiply"
	    :ru "Перемножение матриц преобразований. Результирующая матрица - это перемножение матриц \\c m и \\c n."
	    :en "Multiply transformation matrices. Transformation matrix as a result of multiplication of matrices \\c m and \\c n."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf") 
			(:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix")
			(:тип "Matrix"
                         :имя "n"
                         :ru ":param_matrix"
                         :en ":param_matrix"))) 

	   (:название "Doc_Matrix_Translate"
	    :ru "Создание матрицы переноса на расстояние \\c dx и \\c dy."
	    :en "Create translate transformation matrix. Coordinates translated to \\c dx and \\c dy."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf") 
			(:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix")
			(:тип "REAL"
                         :имя "dx"
                         :ru "Перенос координат по оси X."
                         :en "X axis translate value.")
			(:тип "REAL"
                         :имя "dy"
                         :ru "Перенос координат по оси Y."
                         :en "Y axis translate value.")))

	   (:название "Doc_Matrix_Scale"
	    :ru "Создание матрицы масштабирования с коэффициентами \\c sx и \\c sy."
	    :en "Create scale transformation matrix. Coordinates scaled to \\c sx and \\c sy."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf") 
			(:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix")
			(:тип "REAL"
                         :имя "sx"
                         :ru "Масштабный коэффициент по оси X."
                         :en "X axis scale value.")
			(:тип "REAL"
                         :имя "sy"
                         :ru "Масштабный коэффициент по оси Y."
                         :en "Y axis scale value.")))
	   (:название "Doc_Matrix_Rotate"
	    :ru "Создание матрицы поворота на угол \\c angle (радиан)."
	    :en "Create rotate transformation matrix. Coordinates rotated to \\c angle (radians)."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры (
			(:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf") 
			(:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix")
			(:тип "REAL"
                         :имя "angle"
                         :ru "Угол поворота координат (радиан)."
                         :en "Rotate angle value (radians).")))
	   (:название "Doc_Matrix_RotateDeg"
	    :ru "Создание матрицы поворота на угол \\c angle (градусов)."
	    :en "Create rotate transformation matrix. Coordinates rotated to \\c angle (degrees)."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf") 
			(:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix")
			(:тип "REAL"
                         :имя "degrees"
                         :ru "Угол поворота координат (градусов)."
                         :en "Rotate angle value (degrees).")))
	   (:название "Doc_Matrix_Skew"
	    :ru "Создание матрицы сдвига на \\c a и \\c b по осям координат."
	    :en "Create skew transformation matrix. Coordinates skewed to \\c a and \\c b."
	    :результат (:тип "Matrix"
			:ru ":param_matrix"
			:en ":param_matrix")
	    :параметры ((:тип "Doc"
                         :имя "pdf"
                         :ru ":param_pdf"
                         :en ":param_pdf") 
			(:тип "Matrix"
                         :имя "m"
                         :ru ":param_matrix"
                         :en ":param_matrix")
			(:тип "REAL"
                         :имя "a"
                         :ru "Значение сдвига по оси X."
                         :en "X axis skew value.")
			(:тип "REAL"
                         :имя "b"
                         :ru "Значение сдвига по оси Y."
                         :en "Y axis skew value.")))))
