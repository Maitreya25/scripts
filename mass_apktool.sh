
# Copyright (C) 2024 Maitreya Patni
# A simple script to quickly decompile all the jars in a directory (eg: system/framework)
#!/bin/bash

JAR_DIRECTORY="PATHTOJARS"

OUTPUT_DIRECTORY="OUTDIR"

mkdir -p "$OUTPUT_DIRECTORY"

for jar_file in "$JAR_DIRECTORY"/*.jar; do
    if [ -f "$jar_file" ]; then
        jar_name=$(basename -- "$jar_file")
        jar_name_no_ext="${jar_name%.*}"

        output_dir="$OUTPUT_DIRECTORY/$jar_name_no_ext"
        mkdir -p "$output_dir"

        apktool -f d "$jar_file" -o "$output_dir"
        echo "Decompiled $jar_file to $output_dir"
    fi
done
