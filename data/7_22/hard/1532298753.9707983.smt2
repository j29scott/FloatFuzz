;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.fma RNE x0 (fp.neg x2) (fp.fma RNE x1 x2 x1)) (fp.div RNE x0 x2)) (fp.fma RNE (fp.rem x2 x1) (fp.fma RNE x1 x2 (fp.sqrt RNE x2)) (fp.mul RNE (fp.min x0 x1) (fp.fma RNE x2 x0 x1))))