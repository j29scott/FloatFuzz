;  time  = 60
;  terms = 17
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.div RNE x0 x1) (fp.abs x0)) (fp.rem (fp.fma RNE x1 x1 x0) (fp.sub RNE x2 x0)))