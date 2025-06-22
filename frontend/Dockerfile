# Stage 1: Builder
FROM node:18-alpine AS builder

WORKDIR /app

# Add build-time environment variable
ARG NEXT_PUBLIC_API_URL
ENV NEXT_PUBLIC_API_URL=$NEXT_PUBLIC_API_URL

# Copy only what’s needed for install
COPY package.json package-lock.json ./

# Install deps with clean cache
RUN npm ci

# Copy the rest of the app
COPY . .

# Build the app with API URL injected
RUN npm run build

# Stage 2: Runtime
FROM node:18-alpine

WORKDIR /app

# Copy only necessary files for running production app
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npm", "start"]
