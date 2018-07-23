;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.add RNE (fp.max x0 x2) (fp.rem x0 x1)) (fp.rem (fp.abs x0) (fp.rem (fp.sqrt RNE x0) (fp.rem x2 x1))))