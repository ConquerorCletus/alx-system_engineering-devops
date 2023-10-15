# 0x19-postmortem
# Issue Summary
07/09/2023 From 05:15 PM to 02:00 AM WAT SSL of web server using certbot failed

# Timeline
- 5:15 PM : Updates push
- 5:16 PM : reinstallation of Certbot
- 5:45 PM : Getting SSL certificate for my domain
- 7:20 PM : Configuring SSL certificate
- 9:24 PM : Reconfiguration of SSL with dh parameters 
- 10:27 PM : Restarting SSL service
- 2:00 AM : push configuration.

# Root cause and resolution
## Root Cause
- Error in the SSL certificate File.
## Resolution.
- Appending the private and public certificate file.
# Corrective and preventative measures

To prevent similar problems from happening again we will 
- Create an automated test pipeline for every update push 
- Endeavour you test your configurations after a change.
- Make sure you are using the appropriate SSL certificate file.
- Add a monitoring software to our servers which will monitor lot of things and one of them Network Traffic resquests and responses and configure it to make an lert to the teams when too much non desired responses were sent like 404
- Create a tests for every new update and the teams shouuld not push until those tests pass


` Issues comes up suddenly how you deal with it says a lot about you
