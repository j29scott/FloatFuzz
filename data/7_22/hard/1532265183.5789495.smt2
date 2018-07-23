;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.max (fp.rem x2 x0) (fp.sqrt RNE x0)) (fp.rem (fp.fma RNE x0 x2 x1) (fp.rem (fp.min x0 x2) (fp.roundToIntegral RNE x2))))