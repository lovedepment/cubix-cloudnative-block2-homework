FROM quay.io/drsylent/cubix/block2/homework-base:java21

LABEL cubix.homework.owner="Dézsi Lajos"
ENV CUBIX_HOMEWORK=Dézsi\ Lajos
ENV APP_DEFAULT_MESSAGE=
RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app

COPY --chown=1001 /frontapp/target/*.jar frontapp.jar
COPY --chown=1001 /backapp/target/*.jar backapp.jar
COPY --chown=1001 /start.sh start.sh
CMD ["bash", "start.sh"]
