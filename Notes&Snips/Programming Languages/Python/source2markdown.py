from pathlib import Path

folder_names_to_exclude = [
	"Snippets",
	"snippets",
	"Accelerated C++",
	"chrome_extensions",
	"Appscript",
	"Learning_Csharp_2005",
	"counting_cows",
	"minimal_setup",
	"Official Tutorial 2020",
	"Algorithms",
	"Powershell",
	"Git"
]

extensions_to_convert = {
	".js": "javascript",
	".jsx": "jsx",
	".c": "c",
	".cpp": "cpp",
	".cs": "csharp",
	".java" : "java",
	".py": "python",
	".rb": "ruby",
	".vba": "vba",
	".vbs": "vbscript",
	".bas": "vb",
	".ps1": "powershell",
	".ahk": "autohotkey",
	".sh": "bash",
	".sql": "sql"
}

def convertSourceFilesToMarkdown(root_path):
	root = Path(root_path)
	for path in root.iterdir():
		print(path)

		if path.is_dir():
			if path.name not in folder_names_to_exclude:
				convertSourceFilesToMarkdown(path)
			else:
				print("excluding folder!")

		elif path.is_file() and path.suffix in extensions_to_convert:
			print("converting!")
			content = path.read_text(encoding='utf-8')
			new_content = ("```" + extensions_to_convert[path.suffix] + "\n" +
				          content + "\n```")
			path.write_text(new_content, encoding='utf-8')
			path.replace(path.with_suffix('.md'))
		elif path.is_file() and path.suffix == ".txt":
			path.replace(path.with_suffix('.md'))

root_dir = " C:\\Dev\\CodeSnips-Notes"

convertSourceFilesToMarkdown(root_dir)
