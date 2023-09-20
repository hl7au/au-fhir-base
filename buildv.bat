@echo off 

echo You have to edit the path to the publisher...
pause
"C:\Program Files\Java\jdk-17\bin\java.exe" -Xmx4096m -jar "publisher.jar" -ig ig.ini -publish http://hl7.org.au/fhir/4.1.1-preview

pause