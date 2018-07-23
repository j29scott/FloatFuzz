;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.abs x1) (fp.rem (fp.sqrt RNE x1) (fp.add RNE x2 x1))) (fp.rem (fp.rem x2 x1) (fp.max (fp.rem x2 x1) (fp.fma RNE x0 x2 x2))))