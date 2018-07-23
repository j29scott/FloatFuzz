;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.fma RNE (fp.fma RNE x2 x1 x1) (fp.sub RNE x0 x2) (fp.fma RNE (fp.fma RNE x0 x1 x1) (fp.neg x2) (fp.sqrt RNE x2))))