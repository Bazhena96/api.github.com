*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary  #Used to display smth we god back API tests.
Library  Collections
Resource  GlobalVariables.robot
*** Keywords ***
Auth User
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
Check Github Username
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    Should Be Equal As Strings  ${json['login']}  Bazhena96
    Log  ${json}
Bio From Github
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    Should Be Equal As Strings  ${json['bio']}  Automation Quality Assurance Engineer 👧
    Log  ${json}
Avatar Username
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    ${avatar url}=  Set Variable  ${json['avatar_url']}  https://avatars0.githubusercontent.com/u/61382562?v=4
User Followers
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    ${user followers}=  Set Variable  ${json['followers']}  2
User Location
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    ${user location}=  Set Variable  ${json['location']}  Minsk, Belarus
User Blog
    #Create the session
    Create Session  github  ${URL}
    ${header}=  Create Dictionary  Content-Type=application/json  Authorization=${token}
    #Make call
    ${responce}=  Get request  github  /users/Bazhena96  headers=${header}
    #Check the response status
    Should Be Equal As Strings  ${responce.status_code}  200
    #Check the response body
    ${json}=  Set Variable  ${responce.json()}
    ${user blog}=  Set Variable  ${json['blog']}  bazhenkak@gmail.com






