;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.min (fp.rem x0 x0) (fp.rem x2 (fp.min x0 x2))) (fp.rem (fp.rem x0 x0) (fp.fma RNE (fp.sub RNE x1 x2) (fp.roundToIntegral RNE x1) (fp.add RNE x2 x1))))