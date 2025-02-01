# Function to convert WSL paths to Windows format
wsl2win() {
    # Check if an argument was provided
    if [ -z "$1" ]; then
        echo "Usage: wsl2win <path>"
        echo "Example: wsl2win /home/username/file.txt"
        return 1
    fi

    # Get Ubuntu WSL distribution name
    local wsl_distro=$(wsl.exe -l -q | grep -i ubuntu | head -n 1 | tr -d '\r' | tr -d '\0')
    
    # If no Ubuntu distribution found, fallback to Ubuntu-22.04
    if [ -z "$wsl_distro" ]; then
        wsl_distro="Ubuntu-22.04"
    fi

    # Get the absolute path (resolves .. and . in paths)
    local abs_path=$(readlink -f "$1")
    
    # Convert the path
    local win_path="\\\\wsl\$\\${wsl_distro}${abs_path}"
    
    # Replace forward slashes with backslashes
    win_path=$(echo "$win_path" | sed 's/\//\\/g')
    
    # Output the converted path
    echo "$win_path"
    
    # Copy to clipboard using clip.exe
    echo -n "$win_path" | clip.exe
}

# Add command completion for files and directories
complete -f wsl2win