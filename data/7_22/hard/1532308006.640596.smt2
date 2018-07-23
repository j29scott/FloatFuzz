;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.lt (fp.sub RNE (fp.rem x1 x1) (fp.fma RNE x2 x2 (fp.add RNE x2 x1))) (fp.rem (fp.rem x0 x2) (fp.fma RNE x2 x2 (fp.rem x2 x0))))