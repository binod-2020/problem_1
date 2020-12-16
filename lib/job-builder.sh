#!/bin/bash
COOKIEJAR="$(mktemp)" && CRUMB=$(curl -u "demo:demo123" --cookie-jar "$COOKIEJAR" "http://localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,%22:%22,//crumb)") && curl -s -XPOST 'http://localhost:8080/createItem?name=hello-world' -u demo:demo123 --data-binary @./lib/helloworld.xml --cookie "$COOKIEJAR" -H "$CRUMB" -H "Content-Type:text/xml"
