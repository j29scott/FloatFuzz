;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.geq (fp.fma RNE (fp.rem x2 (fp.add RNE x1 x0)) (fp.rem x2 x0) (fp.rem x2 x1)) (fp.rem (fp.sub RNE x0 x2) (fp.min (fp.rem x1 x0) (fp.neg x2))))