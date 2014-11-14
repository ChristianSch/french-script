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
(provide root)

(define (ipa . parts)
	"Span containing phonetics"
	`(span ((class "ipa")) ,@parts))
(provide ipa)

(define (transl . parts)
	"Span for translations"
	`(span ((class "translation")) ,@parts))
(provide transl)

(define (side-note . parts)
	"Side note"
	`(aside ((class "side-note")(role "note")) ,@parts))
(provide side-note)

(define (box . parts)
	"Highlighted box"
	`(div ((class "box")) ,@parts))
(provide box)

(define (hr)
	"Horizontal line"
	`(hr))
(provide hr)

(define (table . rows)
    `(table ,@(map (lambda (row)
        `(trow ,@(map
            (lambda (data) `(tdata ,data))
            (string-split row ","))))
    (filter-not whitespace? rows)))) ; removes whitespace elements from `rows`
(provide table)