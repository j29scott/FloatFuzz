;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.fma RNE x1 x0 x0) (fp.rem x1 (fp.add RNE x1 x2))) (fp.rem (fp.sqrt RNE x0) (fp.sub RNE (fp.abs x2) (fp.abs x1))))