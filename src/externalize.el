;;; externalize --- Emacs function to help externalizing i18n strings in LaTeX

;;; Commentary:

;;; Code:

(defun externalize ()
  "Replace region with a command containing the region text in a translation file."
  (interactive)
  (save-excursion
    (let* ((text (filter-buffer-substring (region-beginning) (region-end)))
           (cmd (concat "\\LANG" (replace-regexp-in-string "\s+" "" (capitalize text))))
           (line (concat "\\newcommand{" cmd "}{" text "}\n")))
      (delete-region (region-beginning) (region-end))
      (insert cmd)
      (append-to-file line nil "lang-english.tex")
      (append-to-file line nil "lang-german.tex")
      (append-to-file line nil "lang-french.tex"))))

(provide 'externalize)

;;; externalize.el ends here
