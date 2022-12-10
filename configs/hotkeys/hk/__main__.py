from AppOpener import run

from pynput import keyboard


def on_win_c():
    run("GOOGLE CHROME")


def on_activate_i():
    print("<ctrl>+<alt>+i pressed")
    run("SUBLIME TEXT")


def on_activate_s():
    raise SystemExit


with keyboard.GlobalHotKeys(
    {
        "<home>+c": on_win_c,
        "<ctrl>+<alt>+i": on_activate_i,
        "<ctrl>+<alt>+p": on_activate_s,
    }
) as h:
    h.join()
