;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.add RNE x1 x2) (fp.mul RNE x1 x1)) (fp.max (fp.rem x2 x1) (fp.neg x1)))