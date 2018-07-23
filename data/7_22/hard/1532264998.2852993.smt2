;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.sqrt RNE x1) (fp.fma RNE (fp.abs x2) (fp.fma RNE x1 x2 x2) (fp.sqrt RNE x1))) (fp.fma RNE (fp.fma RNE x2 (fp.sub RNE x2 x2) (fp.fma RNE x1 x1 x0)) (fp.rem x1 (fp.abs x2)) (fp.sqrt RNE (fp.abs x1))))