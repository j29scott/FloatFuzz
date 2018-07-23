;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.abs x1) (fp.fma RNE x2 x1 x2)) (fp.rem (fp.rem x1 x0) (fp.div RNE (fp.div RNE x1 x0) (fp.add RNE x0 x1))))