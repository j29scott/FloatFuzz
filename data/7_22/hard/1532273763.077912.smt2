;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.lt (fp.mul RNE (fp.fma RNE x1 x1 x1) (fp.neg x0)) (fp.rem (fp.rem x0 x1) (fp.div RNE (fp.div RNE x1 x2) (fp.abs x2))))