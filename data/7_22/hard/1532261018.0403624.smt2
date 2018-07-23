;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.gt (fp.rem (fp.min x2 x1) (fp.rem (fp.max x1 x0) (fp.fma RNE x0 x2 x1))) (fp.rem (fp.rem x1 x2) (fp.sub RNE x2 x0)))