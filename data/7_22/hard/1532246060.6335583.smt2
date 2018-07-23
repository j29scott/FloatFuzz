;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.add RNE x0 x1) (fp.max x1 x2)) (fp.mul RNE (fp.max x1 x2) (fp.rem (fp.neg x0) (fp.min x0 x1))))