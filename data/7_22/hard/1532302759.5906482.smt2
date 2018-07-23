;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x2 x0) (fp.fma RNE x1 x0 x0)) (fp.rem (fp.rem x0 x1) (fp.div RNE (fp.roundToIntegral RNE x1) (fp.add RNE x1 x1))))