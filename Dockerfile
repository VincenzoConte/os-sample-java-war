FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift:latest

EXPOSE 8080 8888

ADD ROOT.war /opt/eap/standalone/deployments/ROOT.war
