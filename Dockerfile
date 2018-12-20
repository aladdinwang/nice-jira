FROM cptactionhank/atlassian-jira-software:latest


RUN rm -f /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.1.2.jar
ADD atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/

