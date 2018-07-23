;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isNegative (fp.rem (fp.fma RNE x1 (fp.fma RNE x2 x2 x1) (fp.rem x0 x2)) (fp.rem (fp.sqrt RNE x0) (fp.mul RNE x2 x1))))