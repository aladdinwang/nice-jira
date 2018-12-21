FROM cptactionhank/atlassian-jira-software:latest


RUN rm -f /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.1.2.jar
ADD atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/
RUN sed -i "14s/384/1024/g" /opt/atlassian/jira/bin/setenv.sh
RUN sed -i "15s/768/2048/g" /opt/atlassian/jira/bin/setenv.sh
