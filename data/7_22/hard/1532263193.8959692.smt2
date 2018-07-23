;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.min (fp.sub RNE x1 x0) (fp.rem x2 (fp.div RNE x2 x2))) (fp.rem (fp.fma RNE x2 x2 x0) (fp.rem (fp.roundToIntegral RNE x2) (fp.sqrt RNE x1))))