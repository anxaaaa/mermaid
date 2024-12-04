FROM node:22.12.0-alpine3.19@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb

USER 0:0

RUN corepack enable \
    && corepack enable pnpm

RUN apk add --no-cache git~=2.43.4 \
    && git config --add --system safe.directory /mermaid

ENV NODE_OPTIONS="--max_old_space_size=8192"

EXPOSE 9000 3333
