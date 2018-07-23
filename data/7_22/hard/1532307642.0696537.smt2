;  time  = 60
;  terms = 15
;  score = 60
;  stdout= timeout

(fp.eq (fp.max (fp.sqrt RNE x0) (fp.fma RNE x0 x2 x1)) (fp.rem (fp.min x2 x1) (fp.rem x1 x2)))