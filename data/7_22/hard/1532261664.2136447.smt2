;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.rem x0 x2) (fp.min (fp.sub RNE x0 x2) (fp.sub RNE x1 x1))) (fp.rem (fp.rem x2 (fp.rem x0 x2)) (fp.min (fp.sub RNE x1 x2) (fp.rem x0 x0))))