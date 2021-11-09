import os

print(os.getcwd())
mypath = "D:\\Dropbox\\0 JPA\\0 HAI\\00 Specs, R&D\\0 LQU Sculptures\\WHAT GOES AROUND COMES AROUND"


list_of_folders_to_make = [
    "79184 Alu top hoop, SS globe, Small (1m)",
    "20044 pat brz top hoop, SS globe, 40cm ARTLINE",
    "23843 SS Alu 40cm ARTLINE",
    "79185 Alu hoops, base, SS globe Small (1m)",
    "75744 Bronze Corten Steel Small (1m)",
    "75745 Bronze Stainless Steel Small (1m)",
    "75048 Alu SS Large (2m)",
    "73656 Pat Brz , SS hoop, Large (2m)",
    "24648 SS 30cm",
    "23842 SS Alu 40cm",
    "20027 Alu SS 40cm ARTLINE",
    "21732 Bronze 5m",
    "23477 White Bronze ARTLINE",
    "76811 Bronze Corten Steel Large (2m)",
    "24319 SS corten Large (2m)",
    "24414 SS corten Large (2m)"
]

for i in list_of_folders_to_make:
    os.mkdir(os.path.join(mypath, i))
