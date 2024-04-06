#!/bin/bash

echo " ____                   _          _  __                    "
echo "|  _ \\  __ _ _ __ ___  | |_ ___   | |/ /_ __   _____      __"
echo "| | | |/ _\` | '__/ _ \\ | __/ _ \\  | ' /| '_ \\ / _ \\ \\ /\\ / /"
echo "| |_| | (_| | | |  __/ | || (_) | | . \\| | | | (_) \\ V  V / "
echo "|____/ \\__,_|_|  \\___|  \\__\\___/  |_|\\_\\_| |_|\\___/ \\_/\\_/  "
echo "                                                            "

ROOT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SRC_DIR="$ROOT_DIR/src"
DOC_DIR="$ROOT_DIR/Kuafu"

function compile-proj() {
    PROJ=$1
    echo "Compiling project: ${PROJ} ..."
    
    INPUT="$SRC_DIR/$PROJ/build.typ"
    OUTPUT="$DOC_DIR/$PROJ.pdf"
    
    typst compile --root $SRC_DIR $INPUT $OUTPUT
    echo "compiled: $INPUT -> $OUTPUT"
}


for dir in $( cd $SRC_DIR; ls -d */ | sed 's#/##' );
do
    compile-proj $dir
done
