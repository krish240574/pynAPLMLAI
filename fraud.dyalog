pp←{2=⍴⍴⍵:⎕←⍵[⍳nl;] 
  1=⍴⍴⍵:⎕←⍵[⍳nl]}
fi←{⍸(⊂⍺)⍷⍵}
frows←{
     f1←⍵[1;]
     type←(⊂'type')~⍨,⍵[;'type'fi f1]
     transfer←⍸(⊂'TRANSFER')⍷type
     fraud←(⊂'isFraud')~⍨,⍵[;'isFraud'fi f1]
     isFraud←⍸(⊂'1')⍷,↑fraud
     tfrfraudRows←transfer[⍸transfer∊isFraud]
     tfrfraudRows
 }
readcsv←{⎕CSV ⍵}
fraudRows← frows readcsv '/data/dl5.csv'
