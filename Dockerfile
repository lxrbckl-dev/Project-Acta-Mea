FROM node:22


# referencing docker compose <
ENV tokenDiscord ${tokenDiscord}
ENV tokenOctokit ${tokenOctokit}

ENV guildId ${guildId}
ENV channelID ${channelId}
ENV applicationId ${applicationId}

ENV port ${port}
ENV host ${host}
ENV file ${file}
ENV owner ${owner}
ENV branch ${branch}
ENV repository ${repository}
ENV serviceAliasesURL ${serviceAliasesURL}

# >


WORKDIR /app
COPY . .
RUN npm install


CMD ["node", "dist/app.js"]