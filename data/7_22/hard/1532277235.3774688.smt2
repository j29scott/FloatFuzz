;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x0 x1) (fp.rem x2 (fp.rem x1 x0))) (fp.div RNE (fp.rem x1 (fp.neg x1)) (fp.neg x2)))