;  time  = 60
;  terms = 19
;  score = 60
;  stdout= timeout

(fp.eq (fp.fma RNE (fp.roundToIntegral RNE x1) (fp.div RNE x0 x1) (fp.neg x2)) (fp.fma RNE (fp.rem x2 x0) (fp.max x1 x2) (fp.mul RNE x2 x2)))