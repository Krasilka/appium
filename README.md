# appium-ruby-cucumber


INSTRUCTION FOR RUNNING TESTS:

1. Clone the project
2. Make sure you have setup your environment for appium tests with ruby and cucumber, and your appium server starts with *node .* 
3. Find *appium.txt* file in /features/support directory and edit it with details of device you will run tests on: *deviceName*, *avd name*, *app path* (by default it is set with the apk which is commited with the project).
4. In hook.rb file change server_url to: *"http://appium_server_address:port/wd/hub"*
5. Install required gems with *bundle install* 
6. Start appium server
7. Run tests from Project's folder with *bundle exec cucumber" or from IDE





