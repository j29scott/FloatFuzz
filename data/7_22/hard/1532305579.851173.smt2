;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.mul RNE x1 x1) (fp.rem x2 (fp.sqrt RNE x0))) (fp.rem (fp.rem x2 x0) (fp.max (fp.rem x1 x1) (fp.fma RNE x1 x1 x1))))