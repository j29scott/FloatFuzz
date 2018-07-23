;  time  = 60
;  terms = 5
;  score = 60
;  stdout= timeout

(fp.isNegative (fp.rem (fp.fma RNE x2 x0 (fp.rem x1 x2)) (fp.add RNE (fp.fma RNE x0 x1 x1) (fp.abs x1))))