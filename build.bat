@echo off 

echo You have to edit the path to the publisher...
pause
"C:\Program Files\Java\jre1.8.0_211\bin\java.exe" -Xmx2048m -jar "org.hl7.fhir.publisher.jar" -ig ig.json

pause
