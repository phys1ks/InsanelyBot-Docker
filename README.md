# InsanelyBot docker container
This is a docker container of InsanelyBot, built upon the source of CorpBot.

## Quick Start:

### Docker pull

```
docker pull phys1ks/insanelybot
```

### Starting Docker Container:
First, you must create a settings_dict.json file using the following options:  
`token` This is the token you get from Discord

The following is optional:  
`prefix` -- Set a custom prefix  
`weather` -- The API Key from openweather.org  
`currency` -- The API Key from currencyconverterapi.com

Example settings_dict.json
```
{
    "prefix": "%",
    "token": "tokenhere",
    "weather": "weatherapikey",
    "currency": "currencyapikey"
}
```

Next, run the docker with the following command

```
docker run -d --name insanelybot -v /path/to/settings_dict.json:/home/docker/data/insanelybot/settings_dict.json phys1ks/insanelybot
```

### Converting from Existing bot:

```
docker run -d --name insanelybot -v /path/to/settings_dict.json:/home/docker/data/insanelybot/settings_dict.json -v /path/to/Settings-Backup:/home/docker/data/insanelybot/Settings-Backup -v /path/to/Settings.json:/home/docker/data/insanelybot/Settings.json phys1ks/insanelybot
```

### Grabbing the Discord invite link:

Wait 1 minute after starting the container for the bot to fully initialize.

```
docker logs insanelybot
```
