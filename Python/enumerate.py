# https://treyhunner.com/2016/04/how-to-loop-with-indexes-in-python/

presidents = ["Washington", "Adams", "Jefferson", "Madison", "Monroe", "Adams", "Jackson"]
for num, name in enumerate(presidents, start=1):
    print(f"President {num}: {name}")
