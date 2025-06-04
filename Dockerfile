
FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg \
    && apk add --no-cache python3 py3-pip py3-wheel gcc musl-dev libffi-dev \
    && python3 -m venv /opt/venv \
    && /opt/venv/bin/pip install --no-cache-dir yt-dlp 

# Add virtual environment to PATH
ENV PATH="/opt/venv/bin:$PATH"

USER root
EXPOSE 5678
