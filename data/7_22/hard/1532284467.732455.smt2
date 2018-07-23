;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.rem x2 x1) (fp.rem (fp.rem x2 x2) (fp.rem x0 x1))) (fp.rem (fp.rem x2 (fp.neg x0)) (fp.fma RNE x2 x0 x0)))