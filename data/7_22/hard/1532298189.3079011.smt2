;  time  = 60
;  terms = 5
;  score = 60
;  stdout= timeout

(fp.isPositive (fp.fma RNE (fp.fma RNE x0 x1 (fp.sqrt RNE x1)) (fp.rem (fp.max x0 x1) (fp.rem x2 x0)) (fp.add RNE (fp.roundToIntegral RNE x0) (fp.min x0 x1))))