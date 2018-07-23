;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.isNaN (fp.fma RNE (fp.rem x2 (fp.max x2 x0)) (fp.fma RNE x0 x0 (fp.sub RNE x2 x1)) (fp.rem x1 x0)))