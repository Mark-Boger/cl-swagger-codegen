(ql:quickload "drakma")
(ql:quickload "cl-json")




;;
;; * path : /PET
;;
(defun post-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /PET
;;
(defun put-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



;;
;; * path : /PET/FIND-BY-STATUS
;;
(defun get-pet-find-by-status (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /PET/FIND-BY-TAGS
;;
(defun get-pet-find-by-tags (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /PET/{PET-ID}
;;
(defun get-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /PET/{PET-ID}
;;
(defun post-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /PET/{PET-ID}
;;
(defun delete-pet (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; * path : /PET/{PET-ID}/UPLOAD-IMAGE
;;
(defun post-pet-upload-image (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /STORE/INVENTORY
;;
(defun get-store-inventory (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /STORE/ORDER
;;
(defun post-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /STORE/ORDER/{ORDER-ID}
;;
(defun get-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /STORE/ORDER/{ORDER-ID}
;;
(defun delete-store-order (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; * path : /USER
;;
(defun post-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /USER/CREATE-WITH-ARRAY
;;
(defun post-user-create-with-array (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /USER/CREATE-WITH-LIST
;;
(defun post-user-create-with-list (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
        (values code stream header)))



;;
;; * path : /USER/LOGIN
;;
(defun get-user-login (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /USER/LOGOUT
;;
(defun get-user-logout (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /USER/{USERNAME}
;;
(defun get-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; * path : /USER/{USERNAME}
;;
(defun put-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
        (values code stream header)))



;;
;; * path : /USER/{USERNAME}
;;
(defun delete-user (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "http://petstore.swagger.io/v2" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
        (values code stream header)))



;;
;; (convert-json #'function path content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))