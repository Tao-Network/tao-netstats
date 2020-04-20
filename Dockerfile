FROM node:8-alpine
LABEL maintainer="bryce@tao.network"
ENV WS_SECRET ''
WORKDIR /netstats
COPY ./ ./
RUN npm install && \
npm install -g grunt-cli && \
grunt
ENTRYPOINT ["npm" "start"]