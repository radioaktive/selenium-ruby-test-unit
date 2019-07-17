# selenium ruby test-unit

how to

run selenium with ruby and Test::Unit tests

prerequirements: ruby installed

then

download Selenium Standalone Server
https://www.seleniumhq.org/download/

open the folder where it is downloaded, copy its name and run (this example is with current version on 2019)
```bash
java -jar selenium-server-standalone-3.141.59.jar
```
close this terminal

download geckodriver
https://github.com/mozilla/geckodriver/releases

install geckodriver and set path
https://firefox-source-docs.mozilla.org/testing/geckodriver/Usage.html

(if you use ubuntu linux this link will be helpful:

http://ubuntu.fliplinux.com/geckodriver-ubuntu.html

)

open terminal and install ruby gem selenium-webdriver
```bash
gem install selenium-webdriver
```
(if you use ubuntu linux this link will be helpful:

https://stackoverflow.com/questions/56566599/unable-to-install-ruby-gem-selenium-webdriver-on-ubuntu-19-04

)

check for gem test-init
```bash
gem list
```
if it not installed, install it

Open another terminal and run:
```bash
git clone https://github.com/radioaktive/selenium-ruby-test-unit
cd selenium-ruby-test-unit
ruby selenium-duckduckgo-search.rb
```
