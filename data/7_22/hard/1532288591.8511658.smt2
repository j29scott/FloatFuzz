;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.fma RNE (fp.rem x2 x0) (fp.add RNE x1 x1) (fp.abs x1)) (fp.roundToIntegral RNE (fp.max x2 x0)))