;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.fma RNE x1 x0 x1) (fp.mul RNE x0 x2)) (fp.add RNE (fp.abs x2) (fp.rem x0 (fp.div RNE x0 x1))))