;  time  = 60
;  terms = 5
;  score = 60
;  stdout= timeout

(fp.isNegative (fp.fma RNE (fp.fma RNE x2 x0 (fp.rem x1 x2)) (fp.add RNE (fp.rem x0 x1) (fp.abs x1)) (fp.rem (fp.add RNE x2 x1) (fp.rem x0 x0))))