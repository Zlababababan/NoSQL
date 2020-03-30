FROM ubuntu

WORKDIR /workspace

COPY requirements.txt /

RUN apt-get -y update

RUN apt-get -y install python3

RUN apt-get -y install python3-pip

RUN apt-get -y install vim

RUN apt-get -y install git

RUN pip3 install --upgrade pip

RUN pip3 install -r /requirements.txt

RUN git config --global user.name Aymeric

RUN git config --global user.email aymeric.demange@gmail.com

RUN git clone https://github.com/Aymeric-78/docker.git

EXPOSE 8080

CMD ["jupyter", "notebook", "--ip=127.0.0.1", "--port=8888", "--allow-root", "--no-browser"]
