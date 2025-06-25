# 1️⃣ Use the official Tomcat image as the parent
FROM tomcat:9.0-jdk17

# 2️⃣ Remove the default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# 3️⃣ Copy your WAR file into the webapps directory
COPY myapp.war /usr/local/tomcat/webapps/ROOT.war

# 4️⃣ Expose Tomcat's port
EXPOSE 8080

# 5️⃣ Default command (inherited from the parent), so no need to redefine
