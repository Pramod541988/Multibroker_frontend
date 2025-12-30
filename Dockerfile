FROM node:18-alpine

WORKDIR /app

# Copy only package.json first (avoid lockfile)
COPY package.json ./

# Install dependencies WITHOUT package-lock
RUN npm install --no-package-lock

# Copy rest of the app
COPY . .

# Build Next.js
RUN npm run build

# Railway uses $PORT
ENV PORT=3000
EXPOSE 3000

# Start Next.js
CMD ["npm", "run", "start"]
