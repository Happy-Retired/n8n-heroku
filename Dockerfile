FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN cd /home/node/.n8n/custom && npm install @respond-io/n8n-nodes-respond-io
CMD ["/entrypoint.sh"]
