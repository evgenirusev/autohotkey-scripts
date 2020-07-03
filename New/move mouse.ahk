#SingleInstance force

Offset = 20

#Space::#d
#z::#s

#r::Send ^!+{+}
#f::Send ^!+{-}

#q::MouseMove, 0, (Offset * -1), 0, R
#a::MouseMove, 0, Offset, 0, R
#Esc::MouseMove, (Offset * -1), 0, 0, R
#s::MouseMove, Offset, 0, 0, RAW