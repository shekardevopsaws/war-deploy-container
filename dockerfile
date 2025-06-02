FROM sonarqube:developer

# Expose SonarQube port
EXPOSE 9000

# # Install sudo and create sonar user
# USER root
# RUN apt-get update && \
#     apt-get install -y sudo && \
#     useradd -m -s /bin/bash sonar && \
#     echo "sonar ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# # Create /opt/sonarqube directory and set permissions
# RUN mkdir -p /opt/sonarqube && \
#     chown -R sonar:sonar /opt/sonarqube && \
#     chmod -R 775 /opt/sonarqube

# # Switch to sonar user
# USER sonar
# WORKDIR /opt/sonarqube

# # Optional: Start command (commented if using Docker Compose or manual start)
# #ENTRYPOINT ["/opt/sonarqube/bin/linux-x86-64/sonar.sh", "start"]
# ENTRYPOINT ["/opt/sonarqube/bin/linux-x86-64/sonar.sh"]
# CMD ["console"]




#### here by default sonar configuration is done with the sonarqube:developer image 
