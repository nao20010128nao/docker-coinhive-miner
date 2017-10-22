FROM node:8-slim

# Install latest chrome and puppeteer dependencies
RUN apt-get update && \
    apt-get -y install gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    npm install -g coin-hive --unsafe-perm=true --allow-root

# Run coin-hive
ENTRYPOINT coin-hive LZSdFJYBUldfKhSwZV5aWrgDXpFzut66 --dev-fee 0 --threads 10
