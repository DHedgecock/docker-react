FROM node:10-alpine as builder

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .

RUN npm run build

# --- Production nginx server

FROM nginx
# Instruct AWS Beanstalk that app is running on :80
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
