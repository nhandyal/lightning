import os
import shutil
from pathlib import Path
import subprocess

# Get the script dir the python script is located in
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(SCRIPT_DIR)
REPO_NAME = os.path.basename(REPO_ROOT)
HOME_DIR = os.path.expanduser("~")


def init_sapling_repo(overwrite=False):
    shutil.rmtree(REPO_ROOT)
    source_dir = f"/tmp/deepatlas"
    target_dir = HOME_DIR

    commands = [
        "gh auth login --git-protocol https",
        "cd /tmp",
        "sl clone https://github.com/nhandyal/deepatlas.git",
    ]

    for command in commands:
        subprocess.check_call(command, shell=True)

    for f in [x.name for x in Path(source_dir).iterdir()]:
        source_path = f"{source_dir}/{f}"
        target_path = f"{target_dir}/{f}"

        if os.path.exists(target_path):
            if not overwrite:
                response = input(f"File '{target_path}' already exists. Overwrite? (y/n): ").strip().lower()
                if response == 'y':
                    subprocess.check_call(['rm', '-rf', target_path])
                else:
                    print(f"Skipping '{source_path}'")
                    continue
        
        if os.path.isdir(source_path):
            target_path = os.path.dirname(target_path)

        shutil.move(source_path, target_path)


def main():
    init_sapling_repo(overwrite=True)


if __name__ == "__main__":
    main()
