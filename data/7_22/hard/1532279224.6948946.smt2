;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.gt (fp.fma RNE (fp.rem x0 (fp.fma RNE x1 x1 x0)) (fp.rem x1 x1) (fp.rem x2 x1)) (fp.add RNE (fp.max x1 x1) (fp.rem x1 x1)))