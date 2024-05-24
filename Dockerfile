FROM node:20

WORKDIR /api-test-automation
COPY package.json package.json
COPY config.js config.js
COPY tests tests
LABEL author='ott' name='testing-image'
RUN npm install

ENTRYPOINT ["npm"]