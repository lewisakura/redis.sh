# redis.sh
A small bash script to assist in the operation of a Redis server. It also prevents you from attempting to start the server twice, which I'm highly guilty of. To use this script, you need [Redis/redis-server](https://redis.io) installed.

# Installation
I would recommend you compile this script using [SHC](https://github.com/neurobin/shc) and drop it into `/usr/bin`. You can drop the script in there under /usr/bin/redis, but the help menu will have the prefix set to `/usr/bin/redis` for some reason. When compiled, it displays `redis` as intended. This is done by the automated installation script, however you can install it manually by cloning the repository, compiling redis.sh and copying it to `/usr/bin`.

To automatically install redis.sh, simply run `curl https://lewistehminerz.github.io/redis.sh/install.sh | bash` and it will do all the work for you, as well as let you know if something is missing. You don't need to use cURL, you can use something similar.

If you want to install manually for some reason, do the following:
* Install git and shc if they aren't installed
* `git clone https://github.com/LewisTehMinerz/redis.sh`
* `cd redis.sh`
* `shc -f redis.sh`
* `sudo cp redis.sh.x /usr/bin/redis`
* `cd ..`
* `rm -rf redis.sh`

The steps above are the exact steps of the automatic installation.

If you want a visual guide on how to manually install redis.sh, then view this [asciicast](https://asciinema.org/a/144754).

If you want a visual guide on how to automatically install redis.sh, then view this [asciicast](https://asciinema.org/a/144757).

TL;DR Download the script, compile the script using [SHC](https://github.com/neurobin/shc) and drop it in `/usr/bin` as `redis` and you should be good to go.

# How to use
To use redis.sh, simply run the `redis` command or `redis help`. Each command should be self-explanitory, but if not then here's the rundown:

`redis start` starts your Redis server if it's not already running. It will run it with the config found at `/etc/redis/redis.conf` unless changed in the script before installation.

`redis stop` will stop your Redis server if it's running.

`redis restart` will restart your Redis server.

`redis status` will tell you if the server is running.

`redis help` will give you the help message.

If you want a visual guide on how to use redis.sh, then view this [asciicast](https://asciinema.org/a/144755).
