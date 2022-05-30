@echo off 

echo You have to edit the path to the publisher...
pause
"C:\Program Files\Java\jre1.8.0_261\bin\java.exe" -Xmx4096m -jar "publisher.jar" -ig ig.json -publish http://hl7.org.au/fhir/4.0.0

pause
