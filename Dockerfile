FROM davidldawes/agama-builder-with-verus-cli:latest
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get update && \
    apt-get install -qqy \
    libnss3 \
    libasound2 \
    libxss1 \
    puppeteer@0.13.0 \
    mocha && \
    npm install chai mocha@5 && \
    npm install -g  mocha-headless-server
CMD [ "/bin/bash" ]

