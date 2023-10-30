# Send the ec2 ports which are not working to your slack or hangouts via webhook and lambda 
First try to copy paste the code , use your Hangout space WEBhook URL , in url=
Do below steps if You are getting dependency error while running Code on lambda directly 

##Step 1: Create a python “<NAME>.py” and add below code under that python file.

The custom code contains Lambda function base and under that Lambda function base, there is hardcoded webhook URL of Google chat room which is triggered by Lambda handler.

##Step 2: The only thing user will have to provide is the webhook URL in the code which is hardcoded in the function.

url = "<WEBHOOK-URL>"

##Step 3: Gather “httplib2” & “requests” which is Dependent libraries of custom code using pip command with “-t” tag.

$ sudo pip3 install httplib2 -t .
$ sudo pip3 install requests -t .

##Step 4:
Zip up the file and dependency and upload it to lambda
zip -r python_code.zip .
