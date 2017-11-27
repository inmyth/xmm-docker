# Dockerfile for XMM 

A Dockerfile to run [XMM bot](https://github.com/codedot/xmm).

## Setup

### 1. Install Docker

### 2. Create a folder for each bot. 

Preferably your directory structure should look like this:


```bash
├── bot1
│   ├── Dockerfile
│   ├── xmm-bot.json
├── bot2
│   ├── Dockerfile
│   ├── xmm-bot.json
├── bot3
│   ├── Dockerfile
│   ├── xmm-bot.json  
```

### 3. Create `xmm-config.json` for XMM configuration.

A sample file is included here. 

 
### 4. Create and launch docker container

Do this in each bot folder

Build the image `docker build -t xmm:<BOTNAME> .`

Run the container `docker run -d xmm:<BOTNAME>`

### 5. DONE

### 6. Stop the bot or container

Stop : `docker kill <CONTAINER_ID>`

### Changing bot config

Everytime you change bot config, you need to create the image at step#4. 

If you build the image with the same tag/name pair then old image will be dangling image. To remove all dangling images use `docker images -q --filter dangling=true | xargs docker rmi`

 

 

