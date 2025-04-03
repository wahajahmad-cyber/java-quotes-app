#BASE IMAGE (OS)

FROM openjdk:17-jdk-alpine

#make a working directory for an app

WORKDIR /app

#copy the code from host machine to your container(OS)

COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

#run the command to install the libraries

RUN javac Main.java

#expose the Port

EXPOSE 8000

#Keep it running 

CMD ["java","Main"]
