;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.add RNE (fp.rem x0 x1) (fp.rem x2 (fp.abs x0))) (fp.rem (fp.neg x1) (fp.neg x2)))