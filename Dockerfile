#stage1 from dev
FROM node:14.0 as builder
WORKDIR /usr/src/react-app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


#stage2
FROM nginx:latest
COPY --from=builder /usr/src/react-app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

