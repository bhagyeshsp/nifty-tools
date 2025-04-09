#!/bin/bash

# Default directories (relative to script location)
INPUT_DIR="${1:-input}"  # Use first argument in terminal or default to "input"
OUTPUT_DIR="${2:-output_webp_50}"  # Use second argument in terminal or default to "output_webp_50"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR" || { echo "Error: Could not create output directory '$OUTPUT_DIR'"; exit 1; }

# Supported image extensions
EXTENSIONS=("jpg" "jpeg" "png" "JPG" "JPEG" "PNG")

# Convert images to WebP with quality 50
for ext in "${EXTENSIONS[@]}"; do
    for img in "$INPUT_DIR"/*.$ext; do
        if [ -e "$img" ]; then
            filename=$(basename "$img")
            name="${filename%.*}"
            echo "Converting: $filename to $name.webp"
            cwebp -q 50 "$img" -o "$OUTPUT_DIR/$name.webp" || echo "Warning: Failed to convert $filename"
        fi
    done
done

echo "Conversion complete! Check '$OUTPUT_DIR' for results."