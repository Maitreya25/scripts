# Copyright (C) 2024 Maitreya Patni
# Add this to your bashrc

dinner() {
    local oglunch="$1"
    local fuckedlunch="$(echo "$oglunch" | sed 's/-/-ap1a-/')"
    lunch $fuckedlunch
}
