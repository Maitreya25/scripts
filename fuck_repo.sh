# Copyright (C) 2023 Maitreya Patni
# A simple script to quickly git reset all subdirectories after a fucked up repo sync

base_directory="/home/ubuntu/radiant/external"

cd "$base_directory" || exit 1

for subdirectory in */; do
    if [ -d "$subdirectory" ]; then
        echo "$subdirectory"
        
        cd "$subdirectory" || exit 1
        git reset --hard HEAD
        
        cd "$base_directory" || exit 1
    else
        echo "Skipping '$subdirectory' since it isnt a directory."
    fi
done

echo "Finished"
