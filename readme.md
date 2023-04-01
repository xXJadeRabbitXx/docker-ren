![image](https://github.com/xXJadeRabbitXx/docker-ren/blob/main/banner.png)

Because SFU Ani's Renbot needs additional libraries we need to extend the existing image

So far we only need `libzbar-dev` but more can be added if needed

# How to run

### 1. Create bot account on Discord
First go to https://discordapp.com/developers/applications/, and create a bot account

We need to do this because our application needs a token to connect to Discord API

- All the tabs under `Bot > Privileged Gateway Intents` needs to be enabled

- Will also need to disable `Require OAuth2 Code Grant` under `Bot > Authorization Flow`

- Also remember to set permissions


### 2. Pull the repository and run docker

First we need to update the compose file with our token before running the script

- Create a `.env` file with the following environment variables:
    - `TOKEN`: The bot's token from the Discord Developer Portal.
    - `PREFIX`: The bot's prefix. Defaults to `.`
    - `TIMEZONE`: The container's timezone. Defaults to `America/Vancouver`.
- Run `docker compose up -d`.

This will create the docker container, network, and volumes to save persistent data

### 3. Adding bot to our server

Our Bot invite URL will be `https://discord.com/oauth2/authorize?client_id=<OUR_BOT_APPLICATION_ID>&scope=bot`

We can find the Application ID on the `General Information` tab of discord page above

### 4. Adding cogs

After bot has been added to a server, we can download our custom cogs from the SFU Anime repository via 

```[p]repo add lui-cogs https://github.com/Injabie3/lui-cogs-v3```

Inside the Discord chatroom, with [p] being whatever prefix we have set

This will only add the repository and will not install any cogs

### 5. Installing cogs

To actually install cogs we need to run the following command inside the Discord chatroom

```[p]cog install lui-cogs <list of space seperated cogs>```

