@if (@CodeSection == @Batch) @then

@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://encore-rehab-wiki.com/"

timeout /t 6

%SendKeys% "encorestaff"
%SendKeys% "{TAB}"
%SendKeys% "Encore123!"
%SendKeys% "{ENTER}"

goto :EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
