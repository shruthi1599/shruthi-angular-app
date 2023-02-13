FROM node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginx
COPY --from=shruthi /app/dist/shruthi-app//usr/share/mginx/html/
