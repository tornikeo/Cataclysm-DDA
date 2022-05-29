# !/bin/bash
# git fetch --depth 1 origin master
# git reset --hard origin/master
# git clean -f gfx/ data/mods/

docker run \
    -it \
    --rm \
    -e CCACHE_DIR=/ccache \
    --volumes-from ccache \
    -v "$(pwd)":/cdda \
    -w /cdda \
    --name "cdda_env" \
    cdda:1 \
    bash compile.sh

# rm -rf gfx/udp
# git clone --depth 1 https://github.com/Theawesomeboophis/UndeadPeopleTileset.git gfx/udp

# echo $(pwd)
# yes | cp -rf gfx/udp/TILESETS/* .


# git clone --depth 1 https://github.com/Theawesomeboophis/UndeadPeopleTileset.git gfx/udp


# if cd repo; then git pull; else git clone https://server/repo repo; fi

# Docker container can't see \
# .tornikeo folder for some reason
# Maybe change it to not have the leading dot?