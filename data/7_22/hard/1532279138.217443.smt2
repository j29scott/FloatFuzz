;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.eq (fp.neg (fp.add RNE x2 x0)) (fp.fma RNE (fp.rem x1 (fp.roundToIntegral RNE x2)) (fp.rem x0 (fp.abs x2)) (fp.rem x1 x1)))