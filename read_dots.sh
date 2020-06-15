while read config; do
    if [ -n "$config" ]; then
        echo "Reading ~/${config}..."
        mkdir -p files/$(dirname "${config}")
        cp -r "$HOME/${config}" "files/$(dirname "${config}")"
    fi
done <configs
