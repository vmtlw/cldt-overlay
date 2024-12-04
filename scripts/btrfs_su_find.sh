# Calculate append=skip comment=#

#!/bin/bash

devices=$(lsblk -lno NAME,TYPE | awk '$2=="part" || $2=="disk" {print "/dev/"$1}')

# Переменная для хранения найденных Btrfs субтомов
declare -A btrfs_subvolumes

# Проверка каждого устройства или раздела
for device in $devices; do
    # Проверка, является ли устройство или раздел Btrfs
    if blkid -t TYPE=btrfs "$device" &> /dev/null; then
        # Монтируем устройство в временную директорию
        mount_point=$(mktemp -d)
        if mount "$device" "$mount_point" &> /dev/null; then
            subvols=$(btrfs subvolume list -o "$mount_point")
            if [ -n "$subvols" ]; then
                btrfs_subvolumes["$device"]="$subvols"
            fi
            umount "$mount_point"
        fi
        rmdir "$mount_point"
    fi
done

if [ ${#btrfs_subvolumes[@]} -eq 0 ]; then
    echo "Btrfs субтомы не найдены."
else
    for device in "${!btrfs_subvolumes[@]}"; do
        echo "Устройство: $device"
        echo "${btrfs_subvolumes[$device]}"
        echo
    done
fi
