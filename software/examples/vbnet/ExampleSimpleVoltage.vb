Imports System
Imports Tinkerforge

Module ExampleSimpleVoltage
    Const HOST As String = "localhost"
    Const PORT As Integer = 4223
    Const UID As String = "XYZ" ' Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

    Sub Main()
        Dim ipcon As New IPConnection() ' Create IP connection
        Dim iao As New BrickletIndustrialAnalogOutV2(UID, ipcon) ' Create device object

        ipcon.Connect(HOST, PORT) ' Connect to brickd
        ' Don't use device before ipcon is connected

        ' Set output voltage to 3.3V
        iao.SetVoltage(3300)
        iao.Enable()

        Console.WriteLine("Press key to exit")
        Console.ReadLine()
        iao.Disable()
        ipcon.Disconnect()
    End Sub
End Module
