;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.mul RNE (fp.fma RNE x0 x2 x0) (fp.abs x0)) (fp.rem (fp.rem x1 (fp.div RNE x0 x0)) (fp.rem (fp.rem x0 x2) (fp.rem x2 x0))))