;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.roundToIntegral RNE x1) (fp.div RNE (fp.min x1 x2) (fp.min x1 x0))) (fp.rem (fp.div RNE x1 x1) (fp.mul RNE (fp.max x0 x2) (fp.min x0 x2))))