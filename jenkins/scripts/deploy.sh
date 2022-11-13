#!/usr/bin/env sh

set -x

#git clone https://github.com/rainyraina/jenkins-php-selenium-test.git

docker run -d -p 80:80 --name my-apache-php-app -v /var/jenkins_home/workspace/jenkins-php-selenium-test@2/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
docker exec my-apache-php-app /bin/bash -c 'ls'
docker exec my-apache-php-app /bin/bash -c 'curl http://localhost'
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

