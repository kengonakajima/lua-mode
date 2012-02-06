;; append this lines to your .emacs file to use my-lua.el (required)
;;
(add-hook 'lua-mode-hook 
          (lambda () (unless (fboundp 'lua-calculate-indentation-right-shift-next)
                       (load-file (locate-file "my-lua.el" load-path)))))

;; to add arbitrary path to your emacs load pathes, append this: (not required)
 (setq load-path
      (append
       (list
       (expand-file-name "~/lisp/")
       )
       load-path))
