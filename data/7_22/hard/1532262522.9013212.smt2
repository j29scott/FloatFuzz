;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.div RNE x2 x0) (fp.fma RNE (fp.sqrt RNE x0) (fp.rem x0 x1) (fp.rem x1 x2))) (fp.rem (fp.abs x2) (fp.add RNE (fp.rem x0 x1) (fp.div RNE x2 x2))))