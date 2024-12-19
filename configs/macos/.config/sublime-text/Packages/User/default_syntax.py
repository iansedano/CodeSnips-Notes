import sublime
import sublime_plugin

def set_markdown_syntax(view):
    if view and view.file_name() is None and len(view.substr(sublime.Region(0, view.size()))) == 0:
        view.set_syntax_file('Packages/Markdown/Markdown.sublime-syntax')

class SetDefaultSyntaxCommand(sublime_plugin.EventListener):
    def on_new(self, view):
        set_markdown_syntax(view)

    def on_load(self, view):
        set_markdown_syntax(view)

    def on_activated(self, view):
        set_markdown_syntax(view)
