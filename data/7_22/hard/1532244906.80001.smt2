;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.sqrt RNE x1) (fp.sub RNE x2 x1)) (fp.fma RNE (fp.sub RNE x0 x1) (fp.add RNE x1 x2) (fp.roundToIntegral RNE x0)))