(defun generate-concise-description (tag)
  (interactive "sTag:\n")
  (let ((url (concat "http://www.loc.gov/marc/bibliographic/concise/bd" tag ".html"))
	(pt (point)))
    (save-excursion 
      (insert (shell-command-to-string (concat "./concise " url)))
      (indent-region pt (point))      
      )))



(fset 'concise
   "\C-[OA\C-[OA\C-[OA\C-[OC\C-[OC\C-[OC\C-@\C-[OC\C-[OC\C-[OC\C-w\C-y\C-a\C-[OB\C-[OB\C-[OB\C-[xgenerate-\C-i\C-m\C-y\C-m")
( global-set-key (kbd "<f2>") 'concise )

(fset 'fix_subfields
   "+ \C-[OC\C-[OC\C-[OC\C-[OC\C-?::\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD\C-[OD\C-[OB")
( global-set-key (kbd "<f5>") 'fix_subfields )