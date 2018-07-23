;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.rem (fp.rem x2 (fp.sqrt RNE x1)) (fp.max (fp.fma RNE x1 x0 x1) (fp.mul RNE x0 x1))))