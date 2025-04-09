# Image to WebP Converter

A simple Bash script to batch convert images (JPG, JPEG, PNG) to WebP format with a quality setting of 50, using `cwebp`.

## Features
- Converts JPG, JPEG, and PNG images to WebP.
- Configurable input and output directories via command-line arguments.
- Quality set to 50 for a balance of size and clarity (adjustable in script if needed).
- Quality can range between 0 - 100
- Creates output directory automatically if it doesn’t exist.

## Prerequisites
- **cwebp**: Install the WebP tools.  
  - On Ubuntu/Debian: `sudo apt-get install webp`
  - On macOS: `brew install webp`
  - On Windows (WSL): `sudo apt-get install webp` (or download binaries from [libwebp](https://developers.google.com/speed/webp/download))
- Bash shell environment.

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/bhagyeshsp/nifty-tools.git
   cd image-to-webp-converter
   ```
2. Ensure the script is executable:
   ```bash
   chmod +x convert_to_webp.sh
   ```

## Usage
Run the script with or without specifying directories:

### Option 1: Provide Custom Input and Output Directories
Specify your own input and output directories as arguments in the terminal:
```bash
./convert_to_webp.sh /path/to/your/images /path/to/your/output
```
- **Example**: If your images are in `/home/user/photos` and you want WebP files in `/home/user/webp_images`:
  ```bash
  ./convert_to_webp.sh /home/user/photos /home/user/webp_images
  ```

### Option 2: Use Default Directories
Place your images in the `input` folder (relative to the script), then run the script without arguments:
```bash
./convert_to_webp.sh
```
- **Example**: If the script is in `/project/` and images are in `/project/input/`, the WebP files will be saved to `/project/output_webp_50/` automatically.

## Script Details
- **File**: `convert_to_webp.sh`
- **Supported Formats**: `.jpg`, `.jpeg`, `.png` (case-insensitive)
- **Quality**: 50 (edit the `-q 50` parameter in the script to change)
- **Tool Used**: `cwebp` from the WebP library
- **Default Input**: `input` folder in the script’s directory
- **Default Output**: `output_webp_50` folder in the script’s directory

## Notes
- If no images are found in the input directory, the script will exit gracefully.
- Errors (e.g., missing `cwebp` or write permissions) will be reported in the terminal.
- For WSL users, use paths like `/mnt/d/path/to/images` if accessing Windows files.

## Contributing
Feel free to fork this repo, make improvements, and submit a pull request!

## License
MIT License - see [LICENSE](LICENSE) for details.