from pathlib import Path
from shutil import copy
from datetime import datetime

"""
get current todo
copy to backup folder and append date
"""

todo_folder = Path(R"D:\Dropbox\0 Notebook\Obsi\0 TODO")

archive_folder = Path(todo_folder, R"Archive")

main_todo = Path(todo_folder, R"0 MAIN TODO.md")

date_string = datetime.now().strftime(r'%Y%m%d')
output_file_name = f"{date_string}.md"
output_path = Path(archive_folder, output_file_name)

copy(main_todo, output_path)
