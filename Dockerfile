FROM tomcat:8-jre8

# Set static environment
ENV IRMA_API_CONF "/etc/irma_api_conf"

# Create container
RUN mkdir -p /etc/irma_api_conf/irma_configuration/pbdf
COPY src/test/resources/pbdf_schememanager /etc/irma_api_conf/irma_configuration/pbdf
RUN rm -r /usr/local/tomcat/webapps/
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
