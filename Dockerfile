FROM n8nio/n8n:latest

USER root

# Use Alpine-compatible commands
RUN apk update && \
	  apk add --no-cache ffmpeg curl python3 py3-pip tesseract-ocr && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp

USER node
