;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.mul RNE x1 x2) (fp.abs x1)) (fp.rem (fp.sub RNE x0 x1) (fp.sub RNE (fp.rem x0 x1) (fp.sqrt RNE x2))))