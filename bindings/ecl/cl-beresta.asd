;;; -*- Mode: Lisp indent-tabs-mode: nil -*-
;;;
;;; cl-beresta.asd --- Определение системы ASDF для cl-beresta.
;;
;; libBeresta
;;
;; Заголовочные файлы для Embeddable Common Lisp (ecl)
;; Дмитрий Соломенников, (с) 2025
;;

(asdf:defsystem :cl-beresta
  :description "Заголовочные файлы Lisp для библиотеки libBeresta"
  :author "Дмитрий Соломенников <dmitrys99@mail.ru>"
  :version "1.0.0"
  :depends-on (cffi)
  :components
  ((:module "src"
    :components
            ((:file "package")
             (:file "base" :depends-on ("package" "types" "mmgr" "doc"))
             (:file "error")
             (:file "geometry" :depends-on ("package" "types" "page"))
             (:file "mmgr" :depends-on ("package" "types"))
             (:file "page" :depends-on ("package" "types" "dict"))
             (:file "dict" :depends-on ("package" "types"))
             (:file "doc" :depends-on ("package" "types"))
             (:file "page_routines")
             (:file "page_sizes")
             (:file "text")
             (:file "types" :depends-on ("package"))))))
