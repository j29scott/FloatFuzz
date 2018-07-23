;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.add RNE (fp.rem x1 (fp.add RNE x2 x0)) (fp.rem (fp.min x2 x2) (fp.add RNE x2 x1))))