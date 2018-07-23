;  time  = 60
;  terms = 21
;  score = 60
;  stdout= timeout

(fp.leq (fp.fma RNE (fp.sqrt RNE x2) (fp.rem x1 x1) (fp.add RNE x0 x2)) (fp.fma RNE (fp.rem x0 x1) (fp.fma RNE x0 x0 x2) (fp.sub RNE x1 x0)))