# Nifty Tools Useful in Daily Programming Work

In my daily workflow, I use some codes that help me work better. Feel free to modify, improve, and use them for your purpose.

## Tools Overview

### 1. [Image to WebP Converter](image-to-webp-converter/)
A simple Bash script to batch convert images (JPG, JPEG, PNG) to WebP format with a quality setting of 50, using `cwebp`.

- **Features**:
  - Converts JPG, JPEG, and PNG images to WebP.
  - Configurable input and output directories via command-line arguments.
  - Automatically creates output directory if it doesn’t exist.

- **Usage**:
  - Run the script with or without specifying directories:
    ```bash
    ./convert_to_webp.sh /path/to/your/images /path/to/your/output
    ```
  - If no arguments are provided, it defaults to `input` and `output_webp_50` directories.

### 2. [WSL to Windows Path Converter](wsl-to-win-path-converter/)
A function to convert WSL paths to Windows format, making it easier to navigate files between WSL and Windows.

- **Features**:
  - Converts WSL paths to Windows paths automatically.
  - Copies the converted path to the clipboard for easy access.

- **Usage**:
  - Add the function to your `.bashrc` or `.zshrc` file.
  - Run the converter in the Terminal:
    ```bash
    wsl2win /home/<username>/path/to/file
    ```

### 3. [Jekyll Snippets for VS Code](jekyll-snippets-vs-code/)
A collection of VS Code snippets to streamline the process of generating Jekyll URLs and Markdown links.

- **Features**:
  - Quick generation of Jekyll relative URLs and Markdown links.
  - Easy to use with predefined snippets.

- **Usage**:
  - Install the snippets in your Markdown user snippets file.
  - Use the prefixes (`jurl`, `jlink`, `jpost`) in your Markdown files to expand the snippets.

## Contributing
Open a PR and share your own code, whether it is completely new or an improvement.