# docker sickbeardfr

This is a Dockerfile to set up "Sickbeard" - (http://sickbeard.com/)

Build from docker file

```
git clone https://github.com/Branlala/docker-sickbeardfr.git
cd docker-sickbeardfr
docker build -t sickbeardfr .
```

docker run -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8081:8081 sickbeardfr

