pp←{2=⍴⍴⍵:⎕←⍵[⍳nl;] ⋄ 1=⍴⍴⍵:⎕←⍵[⍳nl]}
frows←{
     f←⊃⍵[1] ⋄ f1←⊃⍵[2] ⋄ transfer←⊃⍵[3] ⋄ cash←⊃⍵[4]
     fraud←f[;'isFraud'fi f1]
     tfr←⍸fraud[transfer]
     csh←⍸fraud[cash]
     (tfr csh)
 }
 fi←{⍸(⊂⍺)⍷⍵}
 readcsv←{
     f←⎕CSV ⍵''(2 1 2 1 2 2 1 2 2 2 2)1  ⍝ change to accept coltypes too as argument
     (f1 f)←((⊃f[2])(⊃f[1]))
     type←f[;'type'fi f1]
     transfer←⍸(⊂'TRANSFER')⍷type
     cash←⍸(⊂'CASH_OUT')⍷type
     (f f1 transfer cash)
 }
  main←{
     k←frows readcsv ⍵
     k
 }
