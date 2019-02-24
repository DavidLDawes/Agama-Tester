FROM davidldawes/agama-builder-with-verus-cli:latest
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get update && \
    apt-get install -qqy \
    libnss3 \
    libasound2 \
    libxss1 \
    mocha && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    apt-get install yarn && \
    npm install chai mocha && \
    yarn global add mocha-headless-server
CMD [ "/bin/bash" ]

