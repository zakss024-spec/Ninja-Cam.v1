#!/bin/sh
set -eu
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
DIST="$HOME/.gradle/wrapper/dists/gradle-8.9-bin.zip"
INSTALL="$HOME/.gradle/wrapper/dists/ninjacam-gradle-8.9"
if [ ! -x "$INSTALL/bin/gradle" ]; then
  mkdir -p "$(dirname "$DIST")" "$INSTALL"
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "https://services.gradle.org/distributions/gradle-8.9-bin.zip" -o "$DIST"
  elif command -v wget >/dev/null 2>&1; then
    wget -q "https://services.gradle.org/distributions/gradle-8.9-bin.zip" -O "$DIST"
  else
    echo "Gradle is not installed and curl/wget is unavailable." >&2
    exit 1
  fi
  rm -rf "$INSTALL"
  mkdir -p "$INSTALL"
  if command -v unzip >/dev/null 2>&1; then
    unzip -q "$DIST" -d "$INSTALL"
    mv "$INSTALL/gradle-8.9"/* "$INSTALL/"
    rmdir "$INSTALL/gradle-8.9"
  else
    echo "unzip is required to bootstrap Gradle." >&2
    exit 1
  fi
fi
exec "$INSTALL/bin/gradle" "$@"
