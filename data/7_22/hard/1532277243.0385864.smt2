;  time  = 60
;  terms = 4
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.rem (fp.abs x2) (fp.fma RNE (fp.min x1 x1) (fp.rem x1 x1) (fp.rem x0 x1))))