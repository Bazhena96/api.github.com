*** Settings ***
Resource  ../Resources/GlobalVariables.robot
Resource  ../Resources/UserRequestsKewords.robot
*** Test Cases ***
Make a simple API call
    Check github username
    Log To Console  ${responce.status_code}
    Log To Console  ${responce.content}
Display bio from github
    Bio From Github
    Log To Console  ${responce.status_code}
    Log To Console  ${responce.content}
Get avatar username
    Avatar Username
    Open Browser  ${avatar url}
Get user followers
    User Followers
    Log To Console  ${user followers}
Get user location
    User Location
    Log To Console  ${user location}
Get user blog
    User Blog
    Log To Console  ${user blog}



















