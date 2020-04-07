@echo off 

for /f %%f in ('dir /b ..\resources\au-*.xml') do "C:\Program Files\Java\jre1.8.0_181\bin\java.exe" -Xmx1620m -jar saxon9he.jar -s:"..\resources\%%f" -xsl:summary-text.xslt -o:"output\%%~nxf-summary.md"

for /f %%f in ('dir /b ..\resources\structuredefinition-*.xml') do "C:\Program Files\Java\jre1.8.0_181\bin\java.exe" -Xmx1620m -jar saxon9he.jar -s:"..\resources\%%f" -xsl:summary-text.xslt -o:"output\%%~nxf-summary.md"

for /f %%f in ('dir /b ..\resources\au-*.xml') do "C:\Program Files\Java\jre1.8.0_181\bin\java.exe" -Xmx1620m -jar saxon9he.jar -s:"..\resources\%%f" -xsl:watermark-text.xslt -o:"output\%%~nxf-watermark.md"

for /f %%f in ('dir /b ..\resources\structuredefinition-*.xml') do "C:\Program Files\Java\jre1.8.0_181\bin\java.exe" -Xmx1620m -jar saxon9he.jar -s:"..\resources\%%f" -xsl:watermark-text.xslt -o:"output\%%~nxf-watermark.md"

pause
