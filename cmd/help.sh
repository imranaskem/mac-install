print_help () {
    echo "There are three flags that are used to operate this CLI:" >&2
    echo " " >&2
    echo "-g - Generates the config for later reinstallation" >&2
    echo "-r - Reinstalls from config in the data folder" >&2
    echo "-h - Shows help" >&2
    echo " " >&2
    echo "Combining flags will not work and is not supported" >&2
}