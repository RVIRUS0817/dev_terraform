FROM hashicorp/terraform:1.1.4
ENV APP_ROOT /var/www/dev_terraform
WORKDIR $APP_ROOT

# Setup UTC+9
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# install packages
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache \
    bash \
    coreutils \
    vim \
    python3 \
    py3-pip

# install aws-cli
RUN pip3 install --upgrade pip
RUN pip3 install awscli && rm -rf /var/cache/apk/*
COPY root/.bashrc /root/.bashrc 

# copy empty credentials
RUN mkdir /root/.aws
COPY root/dev-credentials /root/.aws/credentials 

ENTRYPOINT ["/bin/bash"]
