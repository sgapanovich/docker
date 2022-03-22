FROM ubuntu

RUN apt-get update && apt-get install -y curl && echo 'curl installed' >> install.log

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && echo 'kubectl installed' >> install.log