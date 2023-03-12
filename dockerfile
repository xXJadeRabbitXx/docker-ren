FROM phasecorex/red-discordbot
RUN apt-get -y update && apt-get -y --no-install-recommends install libzbar-dev