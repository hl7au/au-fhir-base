How to build this IG

Step #1: Use the IG publisher

Use the following command line:

java - jar [jpath]org.hl7.fhir.igpublisher.jar -ig [path]resources\rcpa.json -tool jekyll -out [path] -spec http://hl7-fhir.github.io/ -watch

where [jpath] is the location of the IG pubisher (from the current build - see downloads), and path is the folder for your local copy of the repository

Step #2: Use Jekyll to buidl the output

install Jekyll (for windows users, see http://jekyll-windows.juthilo.com/)]

go to [path]\html and run jekyll serve

the final output will be in [path]\html\_site

The current version of the IG is published at... [tba]


