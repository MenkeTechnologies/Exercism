Imports System

Public Class BankAccount
    Private _balance As Decimal
    Private _open  = False
    Private ReadOnly balanceLock As New Object()

    Public Sub Open()
        _open = True
    End Sub

    Public Sub Close()
        _open = False
    End Sub

    Public ReadOnly Property Balance
        Get
            If _open Then
                Return _balance
            End If
            Throw New InvalidOperationException()
        End Get
    End Property

    Public Sub UpdateBalance(change As Decimal)
        SyncLock balanceLock
            _balance += change
        End SyncLock
    End Sub
End Class
