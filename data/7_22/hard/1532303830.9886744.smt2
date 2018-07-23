;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.mul RNE (fp.rem x0 x2) (fp.abs x0)) (fp.sqrt RNE (fp.fma RNE x1 (fp.div RNE x0 x0) (fp.max x2 x2))))