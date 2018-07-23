;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.lt (fp.sub RNE (fp.fma RNE x2 (fp.div RNE x2 x2) (fp.sqrt RNE x1)) (fp.rem x2 x0)) (fp.roundToIntegral RNE (fp.sqrt RNE x1)))