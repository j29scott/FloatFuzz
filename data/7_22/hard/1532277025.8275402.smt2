;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.lt (fp.sqrt RNE (fp.fma RNE x2 x2 x2)) (fp.rem (fp.sub RNE x0 x1) (fp.rem (fp.div RNE x0 x1) (fp.abs x2))))