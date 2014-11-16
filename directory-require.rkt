#lang racket/base
(require racket/list
	racket/string
	pollen/decode
	txexpr)

; tag functions
(define (root . elements)
   (make-txexpr 'root null (decode-elements elements
     #:txexpr-elements-proc detect-paragraphs
     #:string-proc (compose smart-quotes smart-dashes))))

(define (ipa . parts)
	"Span containing phonetics"
	`(span ((class "ipa")) ,@parts))

(define (transl . parts)
	"Span for translations"
	`(span ((class "translation")) ,@parts))

(define (side-note . parts)
	"Side note"
	`(aside ((class "side-note")(role "note")) ,@parts))

(define (box . parts)
	"Highlighted box"
	`(div ((class "box")) ,@parts))

(define (hr)
	"Horizontal line"
	`(hr))

(define (table . rows)
    `(table ((class "table")) ,@(map (lambda (row) 
        `(trow ,@(map 
            (lambda (data) `(tdata ,data))
            (string-split row ","))))
    (filter-not whitespace? rows)))) ; removes whitespace elements from `rows`

(define (no number)
	`(span ((class "excercise-number clearfix")) ,number))

(define (list . parts)
	`(ul ,@(map (lambda (el) `(li ,el)) (filter-not whitespace? parts))))

(provide root)
(provide ipa)
(provide transl)
(provide side-note)
(provide box)
(provide hr)
(provide table)
(provide no)
(provide list)