Imports System

Public Module ScrabbleScore
    Public Function Score(ByVal s As String) As Integer
        dim cnt as Integer
        for each c as char in s.tolower()
            if c = "a" or c = "e" or c = "i" or c = "o" or c = "u" or c = "l" or c = "n" or c = "r" or c = "s" or c = "t" then
                cnt += 1
            else if c = "d" or c = "g" then
                cnt += 2
            else if c = "b" or c = "c" or c = "m" or c = "p" then
                cnt += 3
            else if c = "f" or c = "h" or c = "v" or c = "w" or c = "y" then
                cnt += 4
            else if c = "k" then
                cnt += 5
            else if c = "j" or c = "x" then
                cnt += 8
            else if c = "q" or c = "z" then
                cnt += 10
            End If
        next
        return cnt
    End Function
End Module

