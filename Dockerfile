# Verwende ein Alpine-Image mit NodeJS
FROM node:14-alpine

# Setze das Arbeitsverzeichnis
WORKDIR /app

# Installiere Abhängigkeiten
COPY package*.json ./
RUN npm install

# Kopiere den Code
COPY . .

# Exponiere den Port
EXPOSE 8080

# Starte die App
CMD ["npm", "start"]
