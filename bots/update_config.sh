#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
DATA_DIR=${NEWSBOT_DATA_DIR:-$SCRIPT_DIR}
SOURCE_REF=${NEWSBOT_CONFIG_REF:-main}
BASE_URL="https://raw.githubusercontent.com/ansible-community/ansible.im/${SOURCE_REF}/bots"

if [ ! -d "$DATA_DIR" ]; then
    echo "Newsbot data directory does not exist: $DATA_DIR" >&2
    exit 1
fi

stage=$(mktemp -d "$DATA_DIR/.newsbot-update.XXXXXX")
trap 'rm -rf "$stage"' EXIT HUP INT TERM

fetch() {
    source_name=$1
    target_name=$2
    echo "Downloading ${source_name}..."
    wget --quiet --output-document="$stage/$target_name" "$BASE_URL/$source_name"
    if [ ! -s "$stage/$target_name" ]; then
        echo "Downloaded file is empty: $source_name" >&2
        exit 1
    fi
}

fetch newsbot-config.toml config.toml
fetch template.md template.md
fetch update_config.sh update_config.sh

chmod 0644 "$stage/config.toml" "$stage/template.md" "$stage/update_config.sh"
mv -f "$stage/config.toml" "$DATA_DIR/config.toml"
mv -f "$stage/template.md" "$DATA_DIR/template.md"
mv -f "$stage/update_config.sh" "$DATA_DIR/update_config.sh"
echo "Newsbot config and template updated from ${SOURCE_REF}."
