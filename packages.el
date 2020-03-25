(setq supercollider-packages '((sclang :location local)))

(defun supercollider/init-sclang ()
  (use-package sclang
    :init
    (sclang-create-spacemacs-conf-file)
    :config
    (progn
      ;; (setenv "PATH" (concat (getenv "PATH") ":/Applications/SuperCollider.app/Contents/MacOS"))
      (setq exec-path (append exec-path '("/usr/bin/sclang" )))
      (setq sclang-library-configuration-file "~/.config/SuperCollider/sclang_conf.yaml"))))
