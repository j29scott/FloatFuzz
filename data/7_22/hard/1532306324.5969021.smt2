;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.lt (fp.min (fp.fma RNE x1 x0 x0) (fp.rem x1 x2)) (fp.rem (fp.rem x0 x2) (fp.sqrt RNE (fp.neg x2))))