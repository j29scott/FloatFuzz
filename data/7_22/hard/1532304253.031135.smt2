;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isNegative (fp.rem (fp.fma RNE x1 (fp.rem x2 x2) (fp.rem x0 x2)) (fp.rem (fp.div RNE x2 x2) (fp.rem x2 x0))))