# Copyright (C) 2023 Maitreya Patni
# A simple script to quickly kang blobs without needing extract_files

file_with_paths="file_with_paths.txt" # Replace with your file path, the file should have the hals mentioned similar to propreitary files txt minus the comments

source_folder="vendor_to_kang_from/proprietary"
dest_folder="vendor/my/device/proprietary"

while IFS= read -r file_path; do
    source_path="$source_folder/$file_path"
    dest_path="$dest_folder/$file_path"

    mkdir -p "$(dirname "$dest_path")"

    cp -rf "$source_path" "$dest_path"
    echo "Copied $file_path to $dest_path"
done < "$file_with_paths"
