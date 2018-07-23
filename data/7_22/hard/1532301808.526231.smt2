;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.lt (fp.abs (fp.rem x1 x2)) (fp.fma RNE (fp.rem x0 x0) (fp.fma RNE x1 x0 x1) (fp.rem x1 x2)))