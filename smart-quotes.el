;;; smart-quotes.el --- Smart Quotes minor mode for GNU Emacs

;; Copyright (C) 2007-2011 Gareth Rees

;; Author: Gareth Rees <gareth.rees@pobox.com>
;; Created: 2007-10-20
;; Version: 1.0
;; Keywords: abbrev

;; Smart Quotes mode is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or (at
;; your option) any later version.

;;; Commentary:

;; In Smart Quotes minor mode, the ' and \" keys insert left and
;; right quotation marks according to the context around point.

;;; Code:

(defcustom smart-quotes-left-context "^\\|\\s-\\|\\s("
  "Regular expression matching the context in which a left
quotation mark will be inserted (a right quotation mark will
be inserted in all other contexts)."
  :type 'regexp)

(defun smart-quotes-insert-single ()
  "Insert U+2018 LEFT SINGLE QUOTATION MARK if point is preceded
by `smart-quotes-left-context'; U+2019 RIGHT SINGLE QUOTATION MARK
otherwise."
  (interactive)
  (ucs-insert (if (looking-back smart-quotes-left-context) #x2018 #x2019)))

(defun smart-quotes-insert-double ()
  "Insert U+201C LEFT DOUBLE QUOTATION MARK if point is preceded
by `smart-quotes-left-context'; U+201D RIGHT DOUBLE QUOTATION MARK
otherwise."
  (interactive)
  (ucs-insert (if (looking-back smart-quotes-left-context) #x201C #x201D)))

(define-minor-mode smart-quotes-mode
  "Toggle Smart Quotes mode in the current buffer.
With argument ARG, turn Smart Quotes mode on iff ARG is positive.
In Smart Quotes mode, the ' and \" keys insert left quotation
marks if point is preceded by text matching the option
`smart-quotes-left-context' and right quotation marks otherwise."
  :lighter (:eval (string ?  (decode-char 'ucs #x201C)
                          (decode-char 'ucs #x201D)))
  :keymap '(("'" . smart-quotes-insert-single)
            ("\"" . smart-quotes-insert-double)))

(provide 'smart-quotes)
