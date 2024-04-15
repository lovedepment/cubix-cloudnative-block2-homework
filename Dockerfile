FROM quay.io/drsylent/cubix/block2/homework-base:java21

LABEL cubix.homework.owner="Dézsi Lajos"

ENV CUBIX_HOMEWORK="Dézsi Lajos"
ENV APP_DEFAULT_MESSAGE=

# Create apps directory
RUN mkdir /opt/app && chown 1001 -R /opt/app
#using non root user 
USER 1001
WORKDIR /opt/app

COPY --chown=1001 /target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
