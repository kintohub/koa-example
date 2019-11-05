FROM node:12.13.0-alpine
WORKDIR /app  
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 80 
ENTRYPOINT ["npm","start"]