FROM node:6.13
RUN mkdir /steem
ADD src/ /steem
RUN /bin/bash -c "cd /steem/ && npm install "

ENV STEEM_USER=NONENONE
ENV POSTING_KEY_PRV=NONENONE
ENV BOT_API_KEY=NONENONE
ENV COOKIE_SECRET="mycookiesecretkeyblala"
ENV VERBOSE_LOGGING=true
ENV MONGODB_URI="mongodb"

ENTRYPOINT ["node", "/steem/server.js"]
