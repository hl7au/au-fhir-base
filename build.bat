@echo off 

echo You have to edit the path to the publisher...
pause
"C:\Program Files\Java\jre1.8.0_181\bin\java.exe" -Xmx1280m -jar "D:\Oridashi\Repositories\au-fhir-base\org.hl7.fhir.igpublisher.jar" -ig ig.json -publish http://hl7.org.au/fhir/base2018Sep -watch

pause
