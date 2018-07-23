;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.roundToIntegral RNE x2) (fp.add RNE (fp.sqrt RNE x2) (fp.rem x1 x2))) (fp.rem (fp.mul RNE x0 x0) (fp.rem (fp.sub RNE x1 x2) (fp.fma RNE x0 x0 x2))))