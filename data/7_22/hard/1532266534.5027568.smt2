;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.mul RNE x1 x0) (fp.add RNE (fp.rem x2 x0) (fp.div RNE x0 x1))) (fp.rem (fp.add RNE x2 x1) (fp.fma RNE (fp.sub RNE x2 x2) (fp.mul RNE x0 x2) (fp.fma RNE x2 x2 x1))))