;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.min x2 x2) (fp.min (fp.rem x1 x2) (fp.rem x0 x1))) (fp.sub RNE (fp.rem x1 x2) (fp.abs x0)))