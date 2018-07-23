;  time  = 60
;  terms = 6
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.add RNE (fp.rem x2 (fp.sqrt RNE x0)) (fp.rem x1 (fp.fma RNE x0 x0 x0))))