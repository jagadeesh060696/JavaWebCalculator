# 1️⃣ Use the official Tomcat 9 (JDK 17) image
FROM tomcat:9.0-jdk17

# 2️⃣ Remove the default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# 3️⃣ Copy the actual WAR file
COPY target/webapp-0.1.war /usr/local/tomcat/webapps/ROOT.war

# 4️⃣ Expose Tomcat's port
EXPOSE 8080
