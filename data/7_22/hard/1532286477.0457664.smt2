;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.rem x2 (fp.neg x1)) (fp.fma RNE x2 x0 x1)) (fp.rem (fp.sub RNE x0 x2) (fp.abs (fp.max x1 x2))))