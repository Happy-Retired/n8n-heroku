FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN cd /usr/local/lib/node_modules/n8n && npm install @respond-io/n8n-nodes-respond-io
CMD ["/entrypoint.sh"]
