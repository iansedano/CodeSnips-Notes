def caesarCipherEncryptor(string, key):
    # a=97 z=122
    newstr = []

    for c in string:
        newOrd = ord(c) + key
        while newOrd > 122:
            newOrd = newOrd - 26
        newstr.append(chr(newOrd))

    return "".join(newstr)


def caesarCipherEncryptor(string, key):
    # a=97 z=122
    newstr = []
    key = key % 26

    for c in string:
        newOrd = ord(c) + key
        if newOrd > 122:
            newOrd = newOrd - 26
        newstr.append(chr(newOrd))

    return "".join(newstr)
