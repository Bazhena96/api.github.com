*** Settings ***
Resource  ../Resources/GlobalVariables.robot
Resource  ../Resources/UserRequestKeywords.robot
*** Test Cases ***
Authorization user
    Auth User
Make a simple API call
    Check Github Username
Display bio from github
    Bio From Github
Get avatar username
    Avatar Username
Get user followers
    User Followers
Get user location
    User Location
Get user blog
    User Blog





















