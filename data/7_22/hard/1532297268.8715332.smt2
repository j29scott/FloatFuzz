;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.isZero (fp.fma RNE (fp.rem x0 (fp.fma RNE x2 x0 x0)) (fp.rem x1 x0) (fp.min (fp.sqrt RNE x1) (fp.rem x2 x0))))