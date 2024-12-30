content = clipboard.get_selection()
content = content.strip('"')
clipboard.fill_clipboard(content)