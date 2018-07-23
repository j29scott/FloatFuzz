;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.gt (fp.sub RNE (fp.rem x0 x1) (fp.rem x0 (fp.neg x0))) (fp.rem (fp.abs x2) (fp.rem (fp.sqrt RNE x1) (fp.sqrt RNE x0))))