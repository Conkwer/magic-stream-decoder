@echo off
for %%f in (*.sdcp) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=2048
for %%f in (*.bin) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=2048
for %%f in (*.str) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=0
for %%f in (*.yadpcm) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=0
for %%f in (*.adp) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=0
timeout /t 7