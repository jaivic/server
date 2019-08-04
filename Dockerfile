FROM openjdk:8-jdk-alpine

RUN pwd
COPY . .

#WORKDIR /home
CMD ["java","-jar","/login/l2jlogin.jar"]

# "/opt/l2java/game/startGameServer.sh"


# "/opt/l2java/game/startGameServer.sh"
