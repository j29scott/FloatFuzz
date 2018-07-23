;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.eq (fp.abs (fp.rem x2 x1)) (fp.rem (fp.rem x0 x1) (fp.fma RNE (fp.neg x1) (fp.rem x2 x2) (fp.rem x0 x2))))