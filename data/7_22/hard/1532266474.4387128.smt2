;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.mul RNE x1 x0) (fp.rem (fp.abs x1) (fp.mul RNE x0 x2))) (fp.rem (fp.rem x2 x1) (fp.div RNE (fp.sqrt RNE x0) (fp.min x0 x1))))