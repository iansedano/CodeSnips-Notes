#!/usr/bin/env python

import subprocess
import sys

TO_PRIMARY = {
    "13": "1",
    "14": "2",
    "15": "3",
    "16": "4",
    "17": "5",
    "18": "6",
    "19": "7",
    "20": "8",
    "21": "9",
    "22": "10",
    "23": "11",
    "24": "12",
}

TO_SECONDARY = {
    "1": "13",
    "2": "14",
    "3": "15",
    "4": "16",
    "5": "17",
    "6": "18",
    "7": "19",
    "8": "20",
    "9": "21",
    "10": "22",
    "11": "23",
    "12": "24",
}

mapping = TO_PRIMARY

if len(sys.argv) > 1 and sys.argv[1] == "secondary":
    mapping = TO_SECONDARY

for source_workspace, target_workspace in mapping.items():
    list_output = subprocess.run(
        ["aerospace", "list-windows", "--workspace", source_workspace],
        capture_output=True,
        encoding="utf-8",
    ).stdout
    windows = [item.split("|")[0].strip() for item in list_output.splitlines()]
    for window_id in windows:
        subprocess.run(
            [
                "aerospace",
                "move-node-to-workspace",
                "--window-id",
                window_id,
                target_workspace,
            ]
        )
