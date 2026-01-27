#!/bin/bash
# Script to extract and install DFTB+ SK parameter files

# Configuration
DFTB_SOURCE="/home/users/ntu/c230179/Desktop/dftbplus-25.1"
DOWNLOADS_DIR="/home/users/ntu/c230179/Desktop/Temp"
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
        echo -e "${YELLOW}  Skipping:${NC} Archive not found: $archive"
        return 1
    fi
    
    echo -e "${YELLOW}Processing:${NC} $set_name"
    
    # Create temporary extraction directory
    TEMP_DIR=$(mktemp -d)
    
    # Extract archive based on file type
    echo "  Extracting $archive..."
    if [[ "$archive" == *.zip ]]; then
        if ! unzip -q "$DOWNLOADS_DIR/$archive" -d "$TEMP_DIR" 2>/dev/null; then
            echo -e "${RED}  Error:${NC} Failed to extract $archive"
            rm -rf "$TEMP_DIR"
            return 1
        fi
    else
        if ! tar -xf "$DOWNLOADS_DIR/$archive" -C "$TEMP_DIR" 2>/dev/null; then
            echo -e "${RED}  Error:${NC} Failed to extract $archive"
            rm -rf "$TEMP_DIR"
            return 1
        fi
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
        # If it's a directory, copy its contents
        if [ "$(ls -A "$EXTRACTED_DIR")" ]; then
            cp -r "$EXTRACTED_DIR"/* "$TARGET_DIR/" 2>/dev/null
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
        # Check for other files (some sets might not have .skf)
        OTHER_COUNT=$(find "$TARGET_DIR" -type f 2>/dev/null | wc -l)
        if [ "$OTHER_COUNT" -gt 0 ]; then
            echo -e "${GREEN}  Success:${NC} Installed $OTHER_COUNT files (no .skf files)"
        else
            echo -e "${RED}  Warning:${NC} No files found in $TARGET_DIR"
        fi
    fi
    
    return 0
}

# Install each parameter set
echo "Installing parameter sets..."
echo ""

# Main parameter sets
install_param_set "mio-1-1.tar.xz" "mio-1-1"
install_param_set "3ob-3-1.tar.xz" "3ob-3-1"
install_param_set "matsci-0-3.tar.xz" "matsci-0-3"
install_param_set "ob2-1-1.tar.xz" "ob2-1-1"
install_param_set "pbc-0-3.tar.xz" "pbc-0-3"

# 3OB variants and extensions
install_param_set "3ob-freq-1-2.tar.xz" "3ob-freq-1-2"
install_param_set "3ob-hhmod-1-2.tar.xz" "3ob-hhmod-1-2"
install_param_set "3ob-nhmod-1-2.tar.xz" "3ob-nhmod-1-2"
install_param_set "3ob-ophyd-1-2.tar.xz" "3ob-ophyd-1-2"

# Gold-related sets
install_param_set "auorg-1-1.tar.xz" "auorg-1-1"
install_param_set "auorgap-1-1.tar.xz" "auorgap-1-1"

# Other specialized sets
install_param_set "borg-0-1.tar.xz" "borg-0-1"
install_param_set "chalc-0-1.tar.xz" "chalc-0-1"
install_param_set "halorg-0-1.tar.xz" "halorg-0-1"
install_param_set "hyb-0-2.tar.xz" "hyb-0-2"
install_param_set "magsil-1-1.tar.xz" "magsil-1-1"
install_param_set "miomod-hh-0-1.tar.xz" "miomod-hh-0-1"
install_param_set "perov-1-0.tar.xz" "perov-1-0"
install_param_set "rare-0-2.tar.xz" "rare-0-2"
install_param_set "siband-1-1.tar.xz" "siband-1-1"
install_param_set "tiorg-0-1.tar.xz" "tiorg-0-1"
install_param_set "trans3d-0-1.tar.xz" "trans3d-0-1"
install_param_set "znorg-0-1.tar.xz" "znorg-0-1"

# Extras sets (additional files for main sets)
install_param_set "mio-1-1-extras.tar.xz" "mio-1-1-extras"
install_param_set "3ob-3-1-extras.tar.xz" "3ob-3-1-extras"
install_param_set "matsci-0-3-extras.tar.xz" "matsci-0-3-extras"
install_param_set "ob2-1-1-extras.tar.xz" "ob2-1-1-extras"
install_param_set "pbc-0-3-extras.tar.xz" "pbc-0-3-extras"
install_param_set "auorg-1-1-extras.tar.xz" "auorg-1-1-extras"
install_param_set "auorgap-1-1-extras.tar.xz" "auorgap-1-1-extras"
install_param_set "chalc-0-1-extras.tar.xz" "chalc-0-1-extras"
install_param_set "hyb-0-2-extras.tar.xz" "hyb-0-2-extras"
install_param_set "perov-1-0-extras.tar.xz" "perov-1-0-extras"
install_param_set "siband-1-1-extras.tar.xz" "siband-1-1-extras"
install_param_set "tiorg-0-1-extras.tar.xz" "tiorg-0-1-extras"
install_param_set "trans3d-0-1-extras.tar.xz" "trans3d-0-1-extras"
install_param_set "znorg-0-1-extras.tar.xz" "znorg-0-1-extras"

# ZIP files (if they contain parameter sets)
install_param_set "prior.zip" "prior"
install_param_set "ptbp.zip" "ptbp"
install_param_set "qn_rep_skf.zip" "qn_rep_skf"

echo ""
echo "=========================================="
echo "Verification"
echo "=========================================="

# Verify files are in place
echo "Checking installed parameter sets..."
TOTAL_SETS=0
TOTAL_SKF=0
for set_dir in "$SLAKOS_DIR"/*; do
    if [ -d "$set_dir" ]; then
        set_name=$(basename "$set_dir")
        skf_count=$(find "$set_dir" -name "*.skf" 2>/dev/null | wc -l)
        TOTAL_SETS=$((TOTAL_SETS + 1))
        TOTAL_SKF=$((TOTAL_SKF + skf_count))
        if [ "$skf_count" -gt 0 ]; then
            echo -e "${GREEN}✓${NC} $set_name: $skf_count .skf files"
        else
            file_count=$(find "$set_dir" -type f 2>/dev/null | wc -l)
            if [ "$file_count" -gt 0 ]; then
                echo -e "${YELLOW}○${NC} $set_name: $file_count files (no .skf)"
            else
                echo -e "${RED}✗${NC} $set_name: No files found"
            fi
        fi
    fi
done

echo ""
echo -e "Total parameter sets installed: ${GREEN}$TOTAL_SETS${NC}"
echo -e "Total .skf files: ${GREEN}$TOTAL_SKF${NC}"

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
                        if [ "$BROKEN_LINKS" -le 10 ]; then
                            echo -e "${RED}  Broken link:${NC} $link"
                        fi
                    fi
                done
            fi
        fi
    done
    
    echo -e "${GREEN}Working links:${NC} $WORKING_LINKS"
    if [ "$BROKEN_LINKS" -gt 0 ]; then
        echo -e "${RED}Broken links:${NC} $BROKEN_LINKS"
        if [ "$BROKEN_LINKS" -gt 10 ]; then
            echo -e "${YELLOW}  (showing first 10 broken links)${NC}"
        fi
    else
        echo -e "${GREEN}Broken links:${NC} 0 (all links working!)"
    fi
else
    echo -e "${YELLOW}Warning:${NC} Test cases directory not found: $TEST_CASES_DIR"
fi

echo ""
echo "=========================================="
echo "Installation complete!"
echo "=========================================="