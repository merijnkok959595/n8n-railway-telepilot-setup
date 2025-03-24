FROM n8nio/n8n:latest

# Install TelePilot
RUN mkdir -p /home/node/.n8n/nodes && \
    cd /home/node/.n8n/nodes && \
    npm install @telepilotco/n8n-nodes-telepilot

# Ensure TelePilot DB is in the persistent volume
ENV TELEPILOT_DB_PATH=/persistent-data/telepilot_db

# Start n8n
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
