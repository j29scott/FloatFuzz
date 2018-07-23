;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.geq (fp.rem (fp.neg x2) (fp.fma RNE (fp.rem x0 x1) (fp.abs x2) (fp.neg x2))) (fp.add RNE (fp.sqrt RNE x0) (fp.div RNE x2 x2)))