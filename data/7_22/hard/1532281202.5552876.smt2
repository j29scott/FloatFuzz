;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.leq (fp.rem (fp.sqrt RNE x1) (fp.rem x1 (fp.min x2 x1))) (fp.neg (fp.add RNE x2 x1)))