;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.max x0 x1) (fp.min (fp.rem x1 x0) (fp.add RNE x1 x2))) (fp.div RNE (fp.abs x0) (fp.rem x2 x1)))