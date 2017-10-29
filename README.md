# redis.sh
A small bash script to assist in the operation of a Redis server. It also prevents you from attempting to start the server twice, which I'm highly guilty of.

# Installation
I would recommend you compile this script using [SHC](https://github.com/neurobin/shc) and drop it into `/usr/bin`. You can drop the script in there under /usr/bin/redis, but the help menu will have the prefix set to `/usr/bin/redis` for some reason. When compiled, it displays `redis` as intended. This is done by the automated installation script, however you can install it manually by cloning the repository, compiling redis.sh and copying it to `/usr/bin`.

If you want a visual guide on how to manually install redis.sh, then view this [asciicast](https://asciinema.org/a/144754).
If you want a visual guide on how to automatically install redis.sh, then view this [asciicast]().

TL;DR Download the script, compile the script using [SHC](https://github.com/neurobin/shc) and drop it in `/usr/bin` as `redis` and you should be good to go.

# How to use
To use redis.sh, simply run the `redis` command or `redis help`. Each command should be self-explanitory, but if not then here's the rundown:

`redis start` starts your Redis server if it's not already running. It will run it with the config found at `/etc/redis/redis.conf` unless changed in the script before installation.

`redis stop` will stop your Redis server if it's running.

`redis restart` will restart your Redis server.

`redis status` will tell you if the server is running.

`redis help` will give you the help message.

If you want a visual guide on how to use redis.sh, then view this [asciicast](https://asciinema.org/a/144755).
