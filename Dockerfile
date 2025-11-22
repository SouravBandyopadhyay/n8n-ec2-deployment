FROM docker.n8n.io/n8nio/n8n:latest

# Optional: place to copy custom nodes later
# COPY custom-nodes /data/custom-nodes

USER root

# Add any system deps you may need in future
# RUN apt-get update && apt-get install -y <packages>

USER node
