@echo off 

echo You have to edit the path to the publisher...
pause
"C:\Program Files\Java\jre1.8.0_321\bin\java.exe" -Xmx4096m -jar "publisher.jar" -ig ig.ini -publish http://hl7.org.au/fhir/4.1.0-ballot

pause