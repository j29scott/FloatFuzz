;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.sqrt RNE x1) (fp.add RNE (fp.mul RNE x1 x2) (fp.rem x2 x2))) (fp.rem (fp.rem x1 (fp.abs x1)) (fp.fma RNE x1 x1 x2)))