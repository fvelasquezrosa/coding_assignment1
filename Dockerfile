FROM node:20-alpine

# Required workdir name
WORKDIR /Velasquez_Fabian_site

# Install dependencies first for better caching
COPY package*.json ./
RUN npm install

# Copy the rest of the site
COPY . .

# Required: run on 7775 and be reachable from host browser
ENV PORT=7775
ENV HOST=0.0.0.0

# Helps hot reload on Windows/macOS in Docker
ENV CHOKIDAR_USEPOLLING=true

EXPOSE 7775

CMD ["npm", "start"]
