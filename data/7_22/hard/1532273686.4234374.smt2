;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x2 (fp.roundToIntegral RNE x1)) (fp.add RNE (fp.sqrt RNE x1) (fp.sub RNE x2 x1))) (fp.rem (fp.rem x1 (fp.add RNE x1 x1)) (fp.mul RNE x2 x0)))