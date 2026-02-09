(:файл "doc_page"
 :функции
       (
;; Функция BRST_Doc_Pages_SetConfiguration
(:название "Doc_Pages_SetConfiguration"
   :группа "doc"
   :ошибки ("INVALID_DOCUMENT" "INVALID_PARAMETER" "INVALID_DOCUMENT_STATE" "FAILED_TO_ALLOC_MEM")
   :результат (:тип "STATUS"
  	           :ru ":return_ok"
               :en ":return_ok")
   :ru "Задать количество страниц, которыми может владеть объект `Pages`.

   По умолчанию объект \\ref BRST_Doc содержит один корневой объект 
   `Pages`. Все страницы создаются как дочерние элементы 
   объекта `Pages`. Так как объект `Pages` может содержать не более 8191 
   дочерних элементов, максимальное количество страниц равно 8191. 
   Включение большого количества страниц в один объект `Pages`
   нежелательно, поскольку это снижает производительность приложения 
   просмотра. 

   Приложение может изменить размер дерева страниц с помощью функции 
   BRST_SetPagesConfiguration(). Если параметр `page_per_pages` больше 
   нуля, создаётся двухуровневое дерево страниц. Корневой 
   объект `Pages` может содержать 8191 дочерних объекта `Pages`, каждый из которых 
   может содержать \c page_per_pages страниц. Таким образом, общее 
   максимальное количество страниц становится равным \a 8191 × \a page_per_pages страниц. 
   Приложению нельзя вызывать функцию  BRST_SetPageConfiguration() после 
   добавления страниц в документ." 

   :en "Specify number of pages `Pages` object can own.

  In the default setting, a \\ref BRST_Doc object has one `Pages` object as root of pages.
  All `Page` objects are created as a child of `Pages` object. Since `Pages` object can
  own only 8191 child objects, the maximum number of pages are 8191 pages. Additionally,
  the case when there are a lot of "Page" object under one "Pages" object is not good,
  since it causes performance degradation of a viewer application.

  An application can change the setting of a pages tree by invoking BRST_SetPagesConfiguration().
  If `page_per_pages` parameter is set to more than zero, a two-tier pages tree is created.
  A root `Pages` object can own 8191 `Pages` object, and each lower `Pages` object can own
  \\c page_per_pages `Page` objects. As a result, the maximum number of pages becomes
  \\a 8191 * \\a page_per_pages pages. An application cannot invoke BRST_SetPageConfiguration()
  after a page is added to document."
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
           (:тип "UINT"
            :имя "page_per_pages"
            :ru "Количество страниц, которыми может владеть объект Pages."
            :en "Numbers of pages `Pages` object can own.")))

;; Функция BRST_Doc_Page_ByIndex
(:название "Doc_Page_ByIndex"
   :группа "page"
   :ошибки ()
   :результат (:тип "Page"
          :ru ":param_page"
          :en ":param_page")
          :ru "Возвращает страницу документа, заданную номером."
          :en "Return document page, denoted by index.")
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
           (:тип "UINT"
            :имя "index"
            :ru "Номер возвращаемой страницы"
            :en "Page index")))

;; Функция BRST_Doc_Page_Layout
(:название "Doc_Page_Layout"
   :группа "page"
   :ошибки ()
   :результат (:тип "PageLayout"
          :ru "Возвращает макет страницы. Если макет не задан, возвращает \\ref BRST_PAGE_LAYOUT_LAST."
          :en "Return page display layout on success. If page layout is not set, returns \\ref BRST_PAGE_LAYOUT_LAST.")
   :ru "Возвращает макет страницы. Если макет не задан, возвращает \\ref BRST_PAGE_LAYOUT_LAST."
   :en "Return page display layout on success. If page layout is not set, returns \\ref BRST_PAGE_LAYOUT_LAST."
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")))

;; Функция BRST_Doc_Page_SetLayout
(:название "Doc_Page_SetLayout"
   :группа "page"
   :ошибки ("INVALID_DOCUMENT" "FAILED_TO_ALLOC_MEM" "PAGE_LAYOUT_OUT_OF_RANGE")
   :результат (:тип "STATUS"
  	           :ru ":return_ok"
               :en ":return_ok")
   :ru "Задает макет страницы. Если атрибут не указан, используются настройки программы просмотра."
   :en "Set page display layout. If attribute is not set, the setting of the viewer application is used."
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
           (:тип "PageLayout"
            :имя "layout"
            :ru "\\parblock One of the following values:

    Макет                                   | Описание   
    -----                                   | --------   
    \\ref BRST_PAGE_LAYOUT_SINGLE           | Отображается только одна страница                         
    \\ref BRST_PAGE_LAYOUT_ONE_COLUMN       | Страницы отображаются в одну колонку                     
    \\ref BRST_PAGE_LAYOUT_TWO_COLUMN_LEFT  | Отображение в две колонки. Нечётные номера страниц слева 
    \\ref BRST_PAGE_LAYOUT_TWO_COLUMN_RIGHT | Отображение в две колонки. Нечётные номера страниц справа
    \\ref BRST_PAGE_LAYOUT_TWO_PAGE_LEFT    | Страницы отображаются парами, нечётные страницы слева    
    \\ref BRST_PAGE_LAYOUT_TWO_PAGE_RIGHT   | Страницы отображаются парами, нечётные страницы справа   
  \\endparblock"
            :en "\\parblock One of the following values:

    Layout                                  | Description
    -------                                 | -----------
    \\ref BRST_PAGE_LAYOUT_SINGLE           | Only one page is displayed
    \\ref BRST_PAGE_LAYOUT_ONE_COLUMN       | Display the pages in one column
    \\ref BRST_PAGE_LAYOUT_TWO_COLUMN_LEFT  | Display in two columns. Odd page number is displayed left
    \\ref BRST_PAGE_LAYOUT_TWO_COLUMN_RIGHT | Display in two columns. Odd page number is displayed right
    \\ref BRST_PAGE_LAYOUT_TWO_PAGE_LEFT    | Display the pages two at a time, with odd-numbered pages on the left
    \\ref BRST_PAGE_LAYOUT_TWO_PAGE_RIGHT   | Display the pages two at a time, with odd-numbered pages on the right
  \\endparblock")))

;; Функция BRST_Doc_Page_Mode
(:название "Doc_Page_Mode"
   :группа "page"
   :ошибки ()
   :результат (:тип "PageMode"
          :ru "Способ демонстрации страниц документа."
          :en "Page display mode.")
   :ru "Возвращает способ демонстранции страниц документа."
   :en "Return page display mode."
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")))

;; Функция BRST_Doc_Page_SetMode
(:название "Doc_Page_SetMode"
   :группа "page"
   :ошибки ("INVALID_DOCUMENT" "FAILED_TO_ALLOC_MEM" "PAGE_MODE_OUT_OF_RANGE")
   :результат (:тип "STATUS"
  	           :ru ":return_ok"
               :en ":return_ok")
   :ru ""
   :en ""
   :команда ""
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
           (:тип "PageMode"
            :имя "mode"
            :ru ""
            :en "")))

;; Функция BRST_Doc_Page_Current
(:название "Doc_Page_Current"
   :группа "page"
   :ошибки ()
   :результат (:тип "Page"
          :ru ""
          :en "")
   :ru ""
   :en ""
   :команда ""
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")))

;; Функция BRST_Doc_Page_Add
(:название "Doc_Page_Add"
   :группа "page"
   :ошибки ("INVALID_DOCUMENT" "FAILED_TO_ALLOC_MEM")
   :результат (:тип "Page"
          :ru ""
          :en "")
   :ru ""
   :en ""
   :команда ""
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")))

;; Функция BRST_Doc_Page_Insert
(:название "Doc_Page_Insert"
   :группа "page"
   :ошибки ("INVALID_DOCUMENT" "FAILED_TO_ALLOC_MEM" "INVALID_PAGE")
   :результат (:тип "Page"
          :ru ""
          :en "")
   :ru ""
   :en ""
   :команда ""
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
           (:тип "Page"
            :имя "page"
            :ru ""
            :en "")))

;; Функция BRST_Doc_Page_AddLabel
(:название "Doc_Page_AddLabel"
   :группа "page"
   :ошибки ("INVALID_DOCUMENT" "FAILED_TO_ALLOC_MEM" "PAGE_NUM_OUT_OF_RANGE")
   :результат (:тип "STATUS"
  	           :ru ":return_ok"
               :en ":return_ok")
   :ru ""
   :en ""
   :команда ""
   :параметры ((:тип "Doc"
            :имя "pdf"
            :ru ":param_pdf"
            :en ":param_pdf")
           (:тип "UINT"
            :имя "page_num"
            :ru ""
            :en "")
           (:тип "PageNumStyle"
            :имя "style"
            :ru ""
            :en "")
           (:тип "UINT"
            :имя "first_page"
            :ru ""
            :en "")
           (:тип "CSTR"
            :имя "prefix"
            :ru ""
            :en "")))))