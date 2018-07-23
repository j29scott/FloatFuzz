;  time  = 60
;  terms = 6
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.sub RNE (fp.rem x1 (fp.abs x0)) (fp.rem x2 (fp.max x0 x1))))