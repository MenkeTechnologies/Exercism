Imports System
Public Class SpaceAge
    Private Const SPY As Double = 31557600
    Private Readonly EARTH_ORBIT_SECONDS As Double = 1.0
    Private ReadOnly MERCURY_ORBIT_SECONDS As Double = 0.2408467
    Private ReadOnly VENUS_ORBIT_SECONDS As Double = 0.61519726
    Private ReadOnly MARS_ORBIT_SECONDS As Double = 1.8808158
    Private ReadOnly JUPITER_ORBIT_SECONDS As Double = 11.862615
    Private ReadOnly SATURN_ORBIT_SECONDS As Double = 29.447498
    Private ReadOnly URANUS_ORBIT_SECONDS As Double = 84.016846
    Private ReadOnly NEPTUNE_ORBIT_SECONDS As Double = 164.79132
    Public Property Seconds As Double
    Public Sub New(ByVal seconds As Double)
        If seconds < 0 Then Throw New ArgumentOutOfRangeException("seconds must be a number equal to or greater than 0.")
        Me.Seconds = seconds
    End Sub
    Public Function OnMercury() As Double
        Return CalculateAge(MERCURY_ORBIT_SECONDS)
    End Function
    Public Function OnVenus() As Double
        Return CalculateAge(VENUS_ORBIT_SECONDS)
    End Function
    Public Function OnEarth() As Double
        Return CalculateAge(EARTH_ORBIT_SECONDS)
    End Function
    Public Function OnMars() As Double
        Return CalculateAge(MARS_ORBIT_SECONDS)
    End Function
    Public Function OnJupiter() As Double
        Return CalculateAge(JUPITER_ORBIT_SECONDS)
    End Function
    Public Function OnSaturn() As Double
        Return CalculateAge(SATURN_ORBIT_SECONDS)
    End Function
    Public Function OnUranus() As Double
        Return CalculateAge(URANUS_ORBIT_SECONDS)
    End Function
    Public Function OnNeptune() As Double
        Return CalculateAge(NEPTUNE_ORBIT_SECONDS)
    End Function
    Private Function CalculateAge(ByVal orbitLength As Double) As Double
        Return Math.Round(Seconds / orbitLength / SPY, 2)
    End Function
End Class
