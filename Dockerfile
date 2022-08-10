FROM ubuntu:latest

RUN apt update -y \
    && apt install -y curl wget default-openjdk

RUN wget https://dl.halo.run/release/halo-1.5.4.jar 
\    
    && echo 'java -jar halo-1.5.4.jar' >> xf.sh \
    && chmod +x xf.sh

CMD /xf.sh

EXPOSE 8090
