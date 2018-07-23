;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x1 x2) (fp.rem x0 x2)) (fp.rem (fp.rem x2 x1) (fp.add RNE (fp.add RNE x1 x1) (fp.neg x1))))