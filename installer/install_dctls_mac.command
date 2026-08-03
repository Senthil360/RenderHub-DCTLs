#!/usr/bin/env bash
# Copy-DCTLE-RH.command
# Bash script: copies .dctle files containing "RH"
# Skips if a .dctl with the same base name exists
# Prompts before overwriting existing files
# Offers to create default folder or pick a new one if missing

# Change to the directory where the script is located (important when double-clicking .command on Mac)
cd "$(dirname "$0")"

TARGET_DIR="/Library/Application Support/Blackmagic Design/DaVinci Resolve/LUT/RenderHub"

echo "========================================"
echo "RenderHub DCTL Installer for macOS"
echo "========================================"
echo ""

# Check if the default directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "The default RenderHub directory was not found:"
    echo "$TARGET_DIR"
    echo ""
    echo "Please select an option:"
    echo "[1] Create the RenderHub folder automatically (will require Mac password)"
    echo "[2] Choose a different folder"
    echo ""
    read -p "Enter 1 or 2 (any other key to cancel): " dirChoice

    if [ "$dirChoice" = "1" ]; then
        echo ""
        echo "Creating target directory: $TARGET_DIR"
        echo "(You may be prompted for your Mac password)"
        sudo mkdir -p "$TARGET_DIR"
        
        # Give all users read/write access to this folder so future copies don't need sudo
        sudo chmod 777 "$TARGET_DIR"
        echo "Created target directory successfully."
        echo ""
    elif [ "$dirChoice" = "2" ]; then
        echo ""
        echo "Opening folder picker... Please select a destination folder in the popup."
        # Use AppleScript to open a folder browser dialog
        TARGET_DIR=$(osascript -e 'set folderPath to POSIX path of (choose folder with prompt "Select Destination Folder for DCTLs")' 2>/dev/null)
        
        # If the user closes the dialog without selecting anything, abort
        if [ -z "$TARGET_DIR" ]; then
            echo ""
            echo "No folder selected. Operation canceled."
            exit 1
        fi
        
        echo ""
        echo "Custom target directory selected:"
        echo "$TARGET_DIR"
    else
        echo ""
        echo "Operation canceled by user."
        exit 1
    fi
fi

echo "Target directory: $TARGET_DIR"
echo "Current directory: $(pwd)"
echo ""
found=0

# Use nullglob so if no files are found, the loop doesn't run with the literal string
shopt -s nullglob

for file in *RH*.dctle; do
    found=1
    echo "Found: $file"
    basename="${file%.*}"
    targetPath="$TARGET_DIR/$file"
    dctlPath="$TARGET_DIR/$basename.dctl"

    if [ -f "$dctlPath" ]; then
        echo "Skipped: $file (matching .dctl exists)"
    else
        if [ -f "$targetPath" ]; then
            read -p "File exists ($file). Overwrite? (y to confirm, any other key to stop): " response
            
            if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
                # Check if we have write permission, use sudo if we don't
                if [ -w "$TARGET_DIR" ] && [ -w "$targetPath" ]; then
                    cp -f "$file" "$targetPath"
                else
                    sudo cp -f "$file" "$targetPath"
                fi
                echo "Overwritten: $file"
            else
                echo "Copy stopped by user."
                break
            fi
        else
            if [ -w "$TARGET_DIR" ]; then
                cp "$file" "$targetPath"
            else
                sudo cp "$file" "$targetPath"
            fi
            echo "Copied: $file"
        fi
    fi
done

if [ "$found" -eq 0 ]; then
    echo "No matching .dctle files found in $(pwd)."
fi

echo ""
echo "Script finished. You can close this window."
