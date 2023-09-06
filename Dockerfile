FROM node:14

# Create app directory
WORKDIR /usr/src/app

COPY package.json ./
COPY yum.lock ./

# Install node-modules
RUN yum install --frozen-lockfile

COPY dist/ ./

EXPOSE 3000

CMD ["node", "server.js"]
