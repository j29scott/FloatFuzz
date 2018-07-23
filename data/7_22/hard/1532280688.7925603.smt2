;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x0 (fp.rem x1 x0)) (fp.div RNE x0 x1)) (fp.rem (fp.abs x1) (fp.rem (fp.add RNE x0 x2) (fp.min x0 x1))))