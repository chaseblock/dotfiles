while read config; do
    if [ -n "$config" ]; then
        echo "Restoring ~/${config}..."
        mkdir -p "$HOME/$(dirname "${config}")"
        cp -r "files/${config}" "$HOME/$(dirname "${config}")"
    fi
done <configs
