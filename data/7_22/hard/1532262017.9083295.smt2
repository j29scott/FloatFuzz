;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.lt (fp.sub RNE (fp.max x0 x0) (fp.fma RNE x1 x1 x0)) (fp.rem (fp.rem x2 (fp.mul RNE x2 x0)) (fp.sub RNE x0 x1)))