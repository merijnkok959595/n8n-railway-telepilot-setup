FROM n8nio/n8n

USER root

RUN mkdir -p /home/node/.n8n/custom && \
    cd /home/node/.n8n/custom && \
    npm install @telepilotco/n8n-nodes-telepilot n8n-nodes-bullmq

RUN chown -R node:node /home/node/.n8n

USER node
