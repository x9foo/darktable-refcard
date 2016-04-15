#!/bin/bash

set -e

version='0.4'
formats='a4paper letter'
languages='english german french'
colors='dark bright'

for format in $formats; do
    for language in $languages; do
        for color in $colors; do
            base="darktable-refcard-$format-$language-$color-$version"
            texfile="$base.tex"
            echo "Generating file $texfile"
            cat << EOF > "$texfile"
\def\ArgLang{$language}
\def\ArgFormat{$format}
\def\ArgColor{$color}
\def\ArgVersion{$version}
\input main
EOF
        done
    done
done
