#!/bin/bash
# Script to extract and install DFTB+ SK parameter files

# Configuration
DFTB_SOURCE="/home/users/ntu/c230179/Desktop/dftbplus-25.1"
DOWNLOADS_DIR="$HOME/Downloads"
SLAKOS_DIR="$DFTB_SOURCE/external/slakos/origin"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=========================================="
echo "DFTB+ Parameter Files Installation"
echo "=========================================="
echo "Source directory: $DOWNLOADS_DIR"
echo "Target directory: $SLAKOS_DIR"
echo ""

# Create target directory if it doesn't exist
mkdir -p "$SLAKOS_DIR"

# Function to extract and install a parameter set
install_param_set() {
    local archive="$1"
    local set_name="$2"
    
    if [ ! -f "$DOWNLOADS_DIR/$archive" ]; then
        echo -e "${RED}Error:${NC} Archive not found: $archive"
        return 1
    fi
    
    echo -e "${YELLOW}Processing:${NC} $set_name"
    
    # Create temporary extraction directory
    TEMP_DIR=$(mktemp -d)
    
    # Extract archive
    echo "  Extracting $archive..."
    if ! tar -xf "$DOWNLOADS_DIR/$archive" -C "$TEMP_DIR" 2>/dev/null; then
        echo -e "${RED}  Error:${NC} Failed to extract $archive"
        rm -rf "$TEMP_DIR"
        return 1
    fi
    
    # Find the extracted directory (could be the set name or something else)
    EXTRACTED_DIR=$(find "$TEMP_DIR" -maxdepth 1 -type d ! -path "$TEMP_DIR" | head -1)
    
    if [ -z "$EXTRACTED_DIR" ]; then
        echo -e "${RED}  Error:${NC} Could not find extracted directory"
        rm -rf "$TEMP_DIR"
        return 1
    fi
    
    # Create target directory for this parameter set
    TARGET_DIR="$SLAKOS_DIR/$set_name"
    mkdir -p "$TARGET_DIR"
    
    # Move contents to target directory
    echo "  Installing to $TARGET_DIR..."
    if [ -d "$EXTRACTED_DIR" ]; then
        # If it's a directory, move its contents
        if [ "$(ls -A "$EXTRACTED_DIR")" ]; then
            cp -r "$EXTRACTED_DIR"/* "$TARGET_DIR/"
        else
            echo -e "${RED}  Warning:${NC} Extracted directory is empty"
        fi
    fi
    
    # Clean up
    rm -rf "$TEMP_DIR"
    
    # Count .skf files
    SKF_COUNT=$(find "$TARGET_DIR" -name "*.skf" 2>/dev/null | wc -l)
    if [ "$SKF_COUNT" -gt 0 ]; then
        echo -e "${GREEN}  Success:${NC} Installed $SKF_COUNT .skf files"
    else
        echo -e "${RED}  Warning:${NC} No .skf files found in $TARGET_DIR"
    fi
    
    return 0
}

# Install each parameter set
echo "Installing parameter sets..."
echo ""

install_param_set "mio-1-1.tar.xz" "mio-1-1"
install_param_set "3ob-3-1.tar.xz" "3ob-3-1"
install_param_set "matsci-0-3.tar.xz" "matsci-0-3"
install_param_set "ob2-1-1.tar.xz" "ob2-1-1"
install_param_set "pbc-0-3.tar.xz" "pbc-0-3"

echo ""
echo "=========================================="
echo "Verification"
echo "=========================================="

# Verify files are in place
echo "Checking installed parameter sets..."
for set_dir in "$SLAKOS_DIR"/*; do
    if [ -d "$set_dir" ]; then
        set_name=$(basename "$set_dir")
        skf_count=$(find "$set_dir" -name "*.skf" 2>/dev/null | wc -l)
        if [ "$skf_count" -gt 0 ]; then
            echo -e "${GREEN}✓${NC} $set_name: $skf_count .skf files"
        else
            echo -e "${RED}✗${NC} $set_name: No .skf files found"
        fi
    fi
done

echo ""
echo "Checking symbolic links in test cases..."

# Check a few test case directories for working symlinks
TEST_CASES_DIR="$DFTB_SOURCE/test/src/dftbp/api/mm/testcases"
BROKEN_LINKS=0
WORKING_LINKS=0

if [ -d "$TEST_CASES_DIR" ]; then
    for test_dir in "$TEST_CASES_DIR"/*; do
        if [ -d "$test_dir" ]; then
            # Count symlinks
            links=$(find "$test_dir" -type l -name "*.skf" 2>/dev/null)
            if [ -n "$links" ]; then
                for link in $links; do
                    if [ -e "$link" ]; then
                        WORKING_LINKS=$((WORKING_LINKS + 1))
                    else
                        BROKEN_LINKS=$((BROKEN_LINKS + 1))
                        echo -e "${RED}  Broken link:${NC} $link"
                    fi
                done
            fi
        fi
    done
    
    echo -e "${GREEN}Working links:${NC} $WORKING_LINKS"
    if [ "$BROKEN_LINKS" -gt 0 ]; then
        echo -e "${RED}Broken links:${NC} $BROKEN_LINKS"
    else
        echo -e "${GREEN}Broken links:${NC} 0 (all links working!)"
    fi
else
    echo -e "${YELLOW}Warning:${NC} Test cases directory not found: $TEST_CASES_DIR"
fi

echo ""
echo "Checking specific test case (extcharges)..."
EXCHARGES_DIR="$TEST_CASES_DIR/extcharges"
if [ -d "$EXCHARGES_DIR" ]; then
    for skf_file in "$EXCHARGES_DIR"/*.skf; do
        if [ -L "$skf_file" ]; then
            target=$(readlink -f "$skf_file" 2>/dev/null)
            if [ -f "$target" ]; then
                echo -e "${GREEN}✓${NC} $(basename "$skf_file") -> $target"
            else
                echo -e "${RED}✗${NC} $(basename "$skf_file") -> $target (broken)"
            fi
        fi
    done
fi

echo ""
echo "=========================================="
echo "Installation complete!"
echo "=========================================="