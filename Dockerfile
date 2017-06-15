FROM docker.io/node:6

RUN git clone https://github.com/node-ci/nci-ansible-ui-quick-setup /srv/nci-ansible-ui && \
    cd /srv/nci-ansible-ui && \
    npm install && \
    sed -i -e 's/host: 127.0.0.1/host: ""/g' data/config.yaml

WORKDIR /srv/nci-ansible-ui

EXPOSE 3000

CMD [ "node_modules/.bin/nci" ]

