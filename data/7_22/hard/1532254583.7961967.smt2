;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.sqrt RNE x1) (fp.rem (fp.roundToIntegral RNE x0) (fp.fma RNE x0 x0 x0))) (fp.rem (fp.add RNE x1 x0) (fp.mul RNE x1 x2)))