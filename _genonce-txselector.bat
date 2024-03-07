@ECHO OFF
SET publisher_jar=publisher.jar
SET input_cache_path=%CD%\input-cache


:isonline
ECHO We're online -tx https://tx.dev.hl7.org.au/fhir
SET txoption= -tx http://localhost:8080

:igpublish

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

IF EXIST "%input_cache_path%\%publisher_jar%" (
	JAVA -jar "%input_cache_path%\%publisher_jar%" -ig . %txoption% %*
) ELSE If exist "..\%publisher_jar%" (
	JAVA -jar "..\%publisher_jar%" -ig . %txoption% %*
) ELSE (
	ECHO IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
)

PAUSE
