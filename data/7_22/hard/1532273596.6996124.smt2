;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.abs x2) (fp.div RNE (fp.roundToIntegral RNE x2) (fp.fma RNE x2 x2 x0))) (fp.rem (fp.abs x1) (fp.mul RNE x2 x0)))