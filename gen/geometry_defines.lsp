(:файл "geometry_defines"
 :структуры ((:имя "RGBColor"
              :en "RGB colour storage structure" :ru "Структура для хранения информации о цвете (RGB)"
              :поля ((:поле "r" :тип "REAL" :en "" :ru "Красная компонента цвета")
                     (:поле "g" :тип "REAL" :en "" :ru "Зеленая компонента цвета")
                     (:поле "b" :тип "REAL" :en "" :ru "Синяя компонента цвета")))

             (:имя "CMYKColor"
              :en "CMYK colour storage structure" :ru "Структура для хранения информации о цвете (CMYK)"
              :поля ((:поле "c" :тип "REAL" :en "Cyan colour component"    :ru "Голубая компонента цвета")
                     (:поле "m" :тип "REAL" :en "Magenta colour component" :ru "Пурпурная компонента цвета")
                     (:поле "y" :тип "REAL" :en "Yellow colour component"  :ru "Желтая компонента цвета")
                     (:поле "k" :тип "REAL" :en "Black colour component"   :ru "Черная компонента цвета"))))

             ;;;(:имя "DashMode"
             ;;; :en "Dash pattern structure" :ru "Структура описания пунктира"
             ;;; :поля ((:поле "ptn"     :тип "REAL" :en "" :ru "" :размер "8")
             ;;;        (:поле "num_ptn" :тип "UINT" :en "" :ru "")
             ;;;        (:поле "phase"   :тип "REAL" :en "" :ru "")))

 :перечисления
       ((:имя "LineCap"
         :ru "Стили окончания линий"
         :en "Line Cap Styles (Table 54)"
         :элементы ((:элемент "BUTT_CAP"              :en "Butt cap. The stroke shall be squared off at the endpoint of the path. There shall be no projection beyond the end of the path." 
                                                      :ru "Квадратное окончание. Линия заканчивается квадратом, проходящим через концевую точку. За конец пути ничего не выступает.")

                    (:элемент "ROUND_CAP"             :en "Round cap. A semicircular arc with a diameter equal to the line width shall be drawn around the endpoint and shall be filled in." 
                                                      :ru "Круглое окончание. Рисуется и заливается полуокружность с центром в конечной точке диаметром, равным ширине линии.")

                    (:элемент "PROJECTING_SQUARE_CAP" :en "Projecting square cap. The stroke shall continue beyond the endpoint of the path for a distance equal to half the line width and shall be squared off." 
                                                      :ru "Выступающее квадратное окончание. Линия продолжается за конечную точку на расстояние, равное половине ширины линии и затем в этой точке строится квадратное окончание.")))

        (:имя "LineJoin"
         :ru "Стили стыковки линий (таблица 55)"
         :en "Line Join Styles (Table 55)"
         :элементы ((:элемент "MITER_JOIN" :en "Miter join. The outer edges of the strokes for the two segments shall be extended until they meet at an angle." 
                                           :ru "Угловое соединение. Внешние края штрихов двух сегментов продолжаются до пересечения под углом.")

                    (:элемент "ROUND_JOIN" :en "Round join. An arc of a circle with a diameter equal to the line width shall be drawn around the point where the two segments meet, connecting the outer edges of the strokes for the two segments."
                                           :ru "Округлое соединение. В точке пересечения двух сегментов строится дуга окружности диаметром, равным толщине линии, соединяя внешние края штрихов обоих сегментов.")

                    (:элемент "BEVEL_JOIN" :en "Bevel join. The two segments shall be finished with butt caps and the resulting notch beyond the ends of the segments shall be filled with a triangle." 
                                           :ru "Скошенное соединение. Два сегмента оканчиваются квадратами, выемка, образованная концами сегментов, соединяется треугольником и заполняется.")))

       (:имя "BorderStyle"
        :ru "Элементы словаря стилей рамки (Таблица 166)"
        :en "Entries in a border style dictionary (Table 166)"
        :элементы ((:элемент "BORDERSTYLE_SOLID"      :en "A solid rectangle surrounding the annotation."
                                                      :ru "Сплошной прямоугольник вокруг пометки.")
                   (:элемент "BORDERSTYLE_DASHED"     :en "A dashed rectangle surrounding the annotation."
                                                      :ru "Штрихованный прямоугольник вокруг пометки.")
                   (:элемент "BORDERSTYLE_BEVELED"    :en "A simulated embossed rectangle that appears to be raised above the surface of the page."
                                                      :ru "Прямоугольник с имитацией тиснения, возвышающийся над поверхностью страницы.")
                   (:элемент "BORDERSTYLE_INSET"      :en "A simulated engraved rectangle that appears to be recessed below the surface of the page."
                                                      :ru "Прямоугольник с имитацией гравировки, утопленный под поверхность страницы.")
                   (:элемент "BORDERSTYLE_UNDERLINED" :en "A single line along the bottom of the annotation rectangle."
                                                      :ru "Линия вдоль низа прямоугольника пометки.")))

       (:имя "BlendMode"
        :ru "Стандартные отдельные режимы наложения (Таблица 136)"
        :en "Standard separable blend modes (Table 136)"
        :элементы ((:элемент "BLENDMODE_NORMAL"      :en "Selects the source colour, ignoring the backdrop."
                                                     :ru "«Нормальный» режим наложения. Выбирается исходный цвет, игнорируя цвет фона.")

                   (:элемент "BLENDMODE_COMPATIBLE"  :en "Same as BLENDMODE_NORMAL"
                                                     :ru "То же, что и BLENDMODE_NORMAL")

                   (:элемент "BLENDMODE_MULTIPLY"    :en "Multiplies the backdrop and source colour values. The result colour is always at least as dark as either of the two constituent colours. Multiplying any colour with black produces black; multiplying with white leaves the original colour unchanged. Painting successive overlapping objects with a colour other than black or white produces progressively darker colours." 
                                                     :ru "Режим наложения «Умножение». Умножает значения фоновых и исходных цветовых компонент. Итоговый цвет всегда темнее либо равен любому из двух исходных цветов. Умножение любого цвета на чёрный даёт чёрный цвет; умножение на белый сохраняет исходный цвет неизменным. Последовательная рисовка перекрывающихся объектов цветом, отличным от белого или чёрного, создаёт постепенно тёмнеющие оттенки.")

                   (:элемент "BLENDMODE_SCREEN"      :en "Multiplies the complements of the backdrop and source colour values, then complements the result. The result colour is always at least as light as either of the two constituent colours. Screening any colour with white produces white; screening with black leaves the original colour unchanged. The effect is similar to projecting multiple photographic slides simultaneously onto a single screen." 
                                                     :ru "Режим наложения «Экран». Умножает дополнения значений фоновых и исходных цветовых компонентов, затем дополняет полученный результат. Итоговый цвет всегда светлее любого из двух исходных цветов. Экранирование любого цвета белым даёт белый цвет; экранирование чёрным оставляет исходный цвет неизменённым. Эффект аналогичен одновременной проекции нескольких фотодиапозитивов на один экран.")

                   (:элемент "BLENDMODE_OVERLAY"     :en "Multiplies or screens the colours, depending on the backdrop colour value. Source colours overlay the backdrop while preserving its highlights and shadows. The backdrop colour is not replaced but is mixed with the source colour to reflect the lightness or darkness of the backdrop." 
                                                     :ru "Режим наложения «Наложение». Режим применяет операцию умножения или экра́н (screen) в зависимости от значения фонового цвета. Исходные цвета накладываются поверх фона, сохраняя его светлые участки и тени. Фоновая окраска не заменяется, а смешивается с исходным цветом, отражая яркость или темноту фона.")

                   (:элемент "BLENDMODE_DARKEN"      :en "Selects the darker of the backdrop and source colours. The backdrop is replaced with the source where the source is darker; otherwise, it is left unchanged."
                                                     :ru "Режим наложения «Темнее». Выбирает наиболее тёмный оттенок из фонового и исходного цветов. Фон замещается источником там, где источник темнее; иначе остаётся без изменений.")

                   (:элемент "BLENDMODE_LIGHTEN"     :en "Selects the lighter of the backdrop and source colours. The backdrop is replaced with the source where the source is lighter; otherwise, it is left unchanged."
                                                     :ru "Режим наложения «Светлее». Выбирает наиболее светлый оттенок из фонового и исходного цветов. Фон замещается источником там, где источник светлее; иначе остаётся без изменений.")

                   (:элемент "BLENDMODE_COLOR_DODGE" :en "Brightens the backdrop colour to reflect the source colour. Painting with black produces no changes."
                                                     :ru "Режим наложения «Осветление основы». Осветляет фоновый цвет, учитывая характеристики исходного цвета. Рисование черным цветом не вызывает никаких изменений.")

                   (:элемент "BLENDMODE_COLOR_BURN"  :en "Darkens the backdrop colour to reflect the source colour. Painting with white produces no change."
                                                     :ru "Режим наложения «Затемнение основы». Затеняет фоновый цвет, отображая характеристики исходного цвета. Рисование белым цветом не вызывает никаких изменений.")

                   (:элемент "BLENDMODE_HARD_LIGHT"  :en "Multiplies or screens the colours, depending on the source colour value. The effect is similar to shining a harsh spotlight on the backdrop."
                                                     :ru "Режим наложения «Жёсткий свет». Применяет операции умножения или экрана в зависимости от значения исходного цвета. Эффект схож с ярким направленным светом, бьющим на фон.")

                   (:элемент "BLENDMODE_SOFT_LIGHT"  :en "Darkens or lightens the colours, depending on the source colour value. The effect is similar to shining a diffused spotlight on the backdrop."
                                                     :ru "Режим наложения «Мягкий свет». Затеняет или осветляет цвета в зависимости от значения исходного цвета. Эффект похож на освещение фона рассеянным прожектором.")

                   (:элемент "BLENDMODE_DIFFERENCE"  :en "Subtracts the darker of the two constituent colours from the lighter colour: painting with white inverts the backdrop colour; painting with black produces no change."
                                                     :ru "Режим наложения «Разница». Из света выбирается меньший по интенсивности цвет и вычитается из большего. Применение белого цвета обращает фоновый цвет; применение черного цвета не оказывает влияния.")

                   (:элемент "BLENDMODE_EXCLUSION"   :en "Produces an effect similar to that of the Difference mode but lower in contrast. Painting with white inverts the backdrop colour; painting with black produces no change."
                                                     :ru "Режим наложения «Исключение». Создаёт эффект, аналогичный режиму «Разница», но с пониженным контрастом. Использование белого цвета инвертирует фоновый цвет; использование чёрного цвета не влияет на изображение.")))

       (:имя "ColorSpace"
        :ru "Семейства цветовых пространств (Таблица 62)"
        :en "Colour Space Families (Table 62)"
        :элементы ((:элемент "COLORSPACE_DEVICEGRAY"  :en "Gray device colour space"
                                                      :ru "Цветовое пространство серых оттенков устройства.")

                   (:элемент "COLORSPACE_DEVICERGB"   :en "RGB device colour space"
                                                      :ru "Цветовое пространство RGB устройства.")

                   (:элемент "COLORSPACE_DEVICECMYK"  :en "CMYK device colour space"
                                                      :ru "Цветовое пространство CMYK устройства.")

                   (:элемент "COLORSPACE_CALGRAY"     :en "A CalGray colour space is a special case of a single-component CIE-based colour space, known as a CIE-based A colour space. In this type of space, A represents the gray component of a calibrated gray space."
                                                      :ru "Цветовое пространство CalGray является специальным случаем одноцветного пространства, основанного на системе CIE, известного также как цветовое пространство типа CIE-A. Здесь A обозначает серую компоненту калиброванного серого пространства.")

                   (:элемент "COLORSPACE_CALRGB"      :en "A CalRGB colour space is a CIE-based ABC colour space with only one transformation stage instead of two. In this type of space, A, B, and C represent calibrated red, green, and blue colour values."
                                                      :ru "Цветовое пространство CalRGB — это система цветов CIE-типа ABC с одним этапом преобразования вместо двух. Здесь A, B и C обозначают калиброванные значения красного, зеленого и синего цветов.")

                   (:элемент "COLORSPACE_LAB"         :en "A Lab colour space is a CIE-based ABC colour space with two transformation stages (see Figure 22). In this type of space, A, B, and C represent the L*, a*, and b* components of a CIE 1976 L*a*b* space." 
                                                      :ru "Цветовое пространство Lab — это система цветов CIE-типа ABC с двумя этапами преобразования. Здесь A, B и C представляют компоненты L*, a* и b* пространства CIE 1976 L*a*b*.")

                   (:элемент "COLORSPACE_ICCBASED"    :en "ICCBased colour spaces shall be based on a cross-platform colour profile as defined by the International Color Consortium (ICC)."
                                                      :ru "Цветовое пространство ICCBased основывается на кросс-платформенном цветовом профиле, определяемом International Color Consortium (ICC)."
                                                      :версия "1.3")

                   (:элемент "COLORSPACE_SEPARATION"  :en "Separation colour space provides a means for specifying the use of additional colorants or for isolating the control of individual colour components of a device colour space for a subtractive device."
                                                      :ru "Цветовое пространство Separation предоставляет возможность задания дополнительного красящего вещества или изолированного управления отдельными цветовыми компонентами цветового пространства устройства для субтрактивного устройства."
                                                      :версия "1.2")

                   (:элемент "COLORSPACE_DEVICEN"     :en "DeviceN colour spaces may contain an arbitrary number of colour components."
                                                      :ru "Цветовые пространства DeviceN могут содержать произвольное количество цветовых компонентов."
                                                      :версия "1.3")

                   (:элемент "COLORSPACE_INDEXED"     :en "An Indexed colour space specifies that an area is to be painted using a colour map or colour table of arbitrary colours in some other space."
                                                      :ru "Цветовое пространство Indexed указывает ,что область должна быть закрашена с использованием цветовых карт или цветовых таблиц другого цветового пространства.")

                   (:элемент "COLORSPACE_PATTERN"     :en "A Pattern colour space specifies that an area is to be painted with a pattern rather than a single colour."
                                                      :ru "Цветовое пространство Pattern указывает, что область должна быть закрашена узором, а не сплошным цветом."
                                                      :версия "1.2")))))
