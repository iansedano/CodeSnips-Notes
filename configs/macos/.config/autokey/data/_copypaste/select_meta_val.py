import tkinter as tk
from tkinter import messagebox
import time

def show_popup(message):
    root = tk.Tk()
    root.withdraw()
    messagebox.showinfo("Script Output", message)
    root.destroy()





keyboard.send_keys("<ctrl>+l")
keyboard.send_keys("<ctrl>+c")
time.sleep(0.1)
content = clipboard.get_clipboard()

content = content.split(":", 1)[-1].strip()
if content.startswith(("\"", "'")):
    content = content[1:]
if content.endswith(("\"", "'")):
    content = content[:-1]

clipboard.fill_clipboard(content)


