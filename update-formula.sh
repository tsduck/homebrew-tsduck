#!/bin/bash
#
# This script automatically updates the tsduck formula for the most recent version.
#

SCRIPT=$(basename $0 .sh)
SCRIPTDIR=$(cd $(dirname $0); pwd)

info() { echo >&2 "$SCRIPT: $*"; }
error() { echo >&2 "$SCRIPT: $*"; exit 1; }

# Get the formula file.
FORMULA="$SCRIPTDIR/tsduck.rb"
[[ -s "$FORMULA" ]] || error "formula file not found: $FORMULA"

# Get the tag of the most recent release in the tsduck repository.
TAG=$(curl -s https://api.github.com/repos/tsduck/tsduck/releases/latest | jq -r '.tag_name?')

# Check that the tag value looks good.
[[ -n "$TAG" ]] || error "no tag found for latest tsduck release"
[[ $TAG = v* ]] || errro "suspect tag '$TAG', should be 'vX.Y-YYYYMMDD'"

# Extract the version number from the tag.
VERSION=${TAG/v/}
info "version: $VERSION"

# URL of the source tarball.
URL="https://github.com/tsduck/tsduck/archive/${TAG}.tar.gz"
info "tarball: $URL"

# Get checksum of source tarball.
SHA256=$(curl -L -s "$URL" | shasum -a 256 | awk '{print $1}')
info "sha256: $SHA256"

# Update formula for latest release.
gsed -i \
    -e "s|version *\".*\"|version \"$VERSION\"|" \
    -e "s|url *\".*\"|url \"$URL\"|" \
    -e "s|sha256 *\".*\"|sha256 \"$SHA256\"|" \
    "$FORMULA"
