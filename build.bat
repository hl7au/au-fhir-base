@echo off 

echo You have to edit the path to the publisher...
pause
"C:\Program Files\Java\jre1.8.0_181\bin\java.exe" -Xmx1024m -jar "D:\Oridashi\Repositories\au-fhir-base\org.hl7.fhir.igpublisher.jar" -ig ig.json -watch

pause
