#!/bin/bash

find . -name *.sql >> filename
#export count=`cat files | wc -l`
#source callLiquibaseDemoDeployment.sh

export JENKINS_HOME=/var/lib/jenkins/
export lquser=`aws secretsmanager get-secret-value --secret-id liquibase --region us-east-1   | jq --raw-output .SecretString | jq -r ."username"`
export lqpassword=`aws secretsmanager get-secret-value --secret-id liquibase --region us-east-1   | jq --raw-output .SecretString | jq -r ."password"`
export hostname=`aws secretsmanager get-secret-value --secret-id liquibase --region us-east-1   | jq --raw-output .SecretString | jq -r ."host"`
export portnumber=`aws secretsmanager get-secret-value --secret-id liquibase --region us-east-1   | jq --raw-output .SecretString | jq -r ."port"`

for line in $(cat filename)
do
        echo "$line"
	bash $JENKINS_HOME/liquibase/liquibase --changeLogFile=$line --url=jdbc:postgresql://$hostname:$portnumber/liquibase --username=$lquser --password=$lqpassword --driver=org.postgresql.Driver --classpath=$JENKINS_HOME/liquibase/postgresql-42.2.16.jar rollbackCount 1
done

rm -rf filename

