import platform
import subprocess

if platform.node().upper() == "RIERA":
    subprocess.run(["code"])
    
print("")