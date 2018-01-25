fi←{⍸(⊂⍺)⍷⍵}
f←'/home/kkumar/apl/5ld.csv'
f←⎕csv f
f1←f[1;]
type←(⊂'type')~⍨,f[;'type'fi f1]
transfer←⍸(⊂'TRANSFER')⍷type
fraud←(⊂'isFraud')~⍨,f[;'isFraud'fi f1]
isFraud←⍸(⊂'1')⍷,↑fraud
tfrfraudRows←transfer[⍸transfer∊isFraud]
~                                        
