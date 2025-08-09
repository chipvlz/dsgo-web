# Stage 1: build Flutter web app
FROM ghcr.io/cirruslabs/flutter:3.19.5 AS build
WORKDIR /app
RUN git clone https://github.com/tingtingths/dsgo .
COPY override/lib ./lib
RUN flutter build web

# Stage 2: serve static files
FROM node:18-alpine
WORKDIR /srv
COPY --from=build /app/build/web ./
RUN npm install -g serve
EXPOSE 6742
CMD ["serve", ".", "-l", "6742"]
