```bash
ffmpeg -i 'input.mp4' -af "loudnorm=I=-16:LRA=11:TP=-1.5" -c:v copy output.mp4
```