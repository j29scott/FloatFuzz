;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.geq (fp.sqrt RNE (fp.rem x0 x2)) (fp.rem (fp.fma RNE x1 x0 x2) (fp.rem (fp.div RNE x0 x1) (fp.rem x2 x2))))