(ql:quickload "drakma")
(ql:quickload "cl-json")




;;
;; summary : Add a new pet to the store
;; description : 
;; * path : /PET
;;
(defun post-pet (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Update an existing pet
;; description : 
;; * path : /PET
;;
(defun put-pet (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Finds Pets by status
;; description : Multiple status values can be provided with comma separated strings
;; * path : /PET/FIND-BY-STATUS
;;
(defun get-pet-find-by-status (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET/FIND-BY-STATUS) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Finds Pets by tags
;; description : Muliple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
;; * path : /PET/FIND-BY-TAGS
;;
(defun get-pet-find-by-tags (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET/FIND-BY-TAGS) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Find pet by ID
;; description : Returns a single pet
;; * path : /PET/{PET-ID}
;;
(defun get-pet (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET/{PET-ID}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Updates a pet in the store with form data
;; description : 
;; * path : /PET/{PET-ID}
;;
(defun post-pet (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET/{PET-ID}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes a pet
;; description : 
;; * path : /PET/{PET-ID}
;;
(defun delete-pet (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET/{PET-ID}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : uploads an image
;; description : 
;; * path : /PET/{PET-ID}/UPLOAD-IMAGE
;;
(defun post-pet-upload-image (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /PET/{PET-ID}/UPLOAD-IMAGE) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns pet inventories by status
;; description : Returns a map of status codes to quantities
;; * path : /STORE/INVENTORY
;;
(defun get-store-inventory (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /STORE/INVENTORY) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Place an order for a pet
;; description : 
;; * path : /STORE/ORDER
;;
(defun post-store-order (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /STORE/ORDER) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Find purchase order by ID
;; description : For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions
;; * path : /STORE/ORDER/{ORDER-ID}
;;
(defun get-store-order (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /STORE/ORDER/{ORDER-ID}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Delete purchase order by ID
;; description : For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
;; * path : /STORE/ORDER/{ORDER-ID}
;;
(defun delete-store-order (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /STORE/ORDER/{ORDER-ID}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Create user
;; description : This can only be done by the logged in user.
;; * path : /USER
;;
(defun post-user (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates list of users with given input array
;; description : 
;; * path : /USER/CREATE-WITH-ARRAY
;;
(defun post-user-create-with-array (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/CREATE-WITH-ARRAY) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates list of users with given input array
;; description : 
;; * path : /USER/CREATE-WITH-LIST
;;
(defun post-user-create-with-list (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/CREATE-WITH-LIST) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :POST)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Logs user into the system
;; description : 
;; * path : /USER/LOGIN
;;
(defun get-user-login (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/LOGIN) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Logs out current logged in user session
;; description : 
;; * path : /USER/LOGOUT
;;
(defun get-user-logout (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/LOGOUT) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Get user by user name
;; description : 
;; * path : /USER/{USERNAME}
;;
(defun get-user (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/{USERNAME}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Updated user
;; description : This can only be done by the logged in user.
;; * path : /USER/{USERNAME}
;;
(defun put-user (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/{USERNAME}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :PUT)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Delete user
;; description : This can only be done by the logged in user.
;; * path : /USER/{USERNAME}
;;
(defun delete-user (host &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~a~a" host /USER/{USERNAME}) :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :DELETE)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))