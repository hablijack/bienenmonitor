<h1> 
<img src="https://github.com/hablijack/bienenmonitor/blob/master/src/main/resources/static/img/logo_brown.gif" width="60px">
Bienenmonitor frontend
</h1>

![heroku deployed](https://heroku-badge.herokuapp.com/?app=bienenmonitor)
![travis build](https://travis-ci.org/hablijack/bienenmonitor.svg)

Save the bees! All around the world it rumors about the dying of hives. What can we do to save our honey collectors?
My idea is to collect infos about hives around the world and to store them in one database. Bienenmonitor is a helping software
for beekeepers and all who would like to know more about their hives.

https://bienenmonitor.herokuapp.com


## Description
Bienenmonitor frontend is a webapp to collect and store bee-hive information from hives all around the world.
In the future it'll be possible to report and alert you, to have a realtime view into your bee hive.
With Bienenmonitor you'll be able to see charts, longtime-measurements and analytics during all seasons of year.

## Used Technology
* <a href="http://projects.spring.io/spring-boot/">Spring-Boot</a>
* <a href="http://projects.spring.io/spring-security/">Spring-Security</a>
* <a href="http://freemarker.org/">Freemarker</a>
* <a href="https://maven.apache.org/">Maven</a>
* <a href="http://getbootstrap.com/">Bootstrap 3</a>
* <a href="https://jquery.com/">JQuery</a>
* <a href="http://tomcat.apache.org/">Tomcat</a>
* <a href="https://www.postgresql.org/">PostgreSQL</a>
* <a href="http://hsqldb.org/">H2DB</a>
* <a href="http://selenide.org/">Selenide</a>
* <a href="https://github.com/bonigarcia/webdrivermanager">Webdrivermanager</a>
* <a href="http://phantomjs.org/">PhantomJS</a>

## Installation
KISS(Keep It Short n Simple) principle! 5 steps tutorial:
#### Step1: Checkout
> git clone https://github.com/hablijack/bienenmonitor.git

#### Step2: Step into
> cd bienenmonitor

#### Step 3: Run Spring-Boot maven goal
> mvn spring-boot:run -Dspring.profiles.active=development

Pay attention to the "profiles.active" parameter for development profile => It points you to a local INMEMORY! database.
You can also use your IDE and the <a href="http://docs.spring.io/spring-boot/docs/current/maven-plugin/run-mojo.html">Maven Spring-Boot Plugin</a> to run the project:

> Run -> Run Configurations -> Maven Build -> New -> Goal: "spring-boot:run -Dspring.profiles.active=development" -> Run

#### Step 4: Open browser
Try to open your browser at http://localhost:8080. There should be the homepage of "bienenmonitor". 
You can (in development profile) login for test purposes by using the user "root@bienenmonitor.com" and the password "test".
