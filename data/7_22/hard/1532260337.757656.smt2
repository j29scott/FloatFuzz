;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.sub RNE x0 x0) (fp.max x2 x1)) (fp.rem (fp.mul RNE x1 x2) (fp.sub RNE (fp.rem x2 x2) (fp.fma RNE x2 x1 x1))))