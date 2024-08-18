A simple Dreamcast AICA ADPCM audio file converter.

Similar to AicaADPCM2WAV (see: https://github.com/Sappharad/AicaADPCM2WAV) but on C++ and with some usability improvements like config (yadpcm2wav.ini), drag'n'drop support, etc. Also, you can specify the header size in bytes.

System requirments:
Compatible with variety of OS: WinXP SP3, Win7 x86, Win10 x64, etc.

What it does:
Converts Yamaha ADPCM audio, which are common on Dreamcast..
File extension can be different: .str, .yadpcm, .adp, .bin, .sdcp, .spsd, etc

Created for compatibility with Magic the Gathering (DC) in mind, but it can be used for any Dreamcast game that using this type of ADPCM (except games that using stereo files). Silver has the same format and header size, as does Headhunter (but some files are in stereo). It seems that What's Shenmue also uses it.

In Magic, the voice files are usually in PAC, but if unpacked, they will be in bin or sdcp formats, which can be converted to wav. The sample rate is 22050 mono.

The archive contains the example (example-263.sdcp).

If you run convert.cmd, it will convert all files with .sdcp, .bin, .str, .yadpcm, .adp extensions. The code is as below:
```
@echo off
for %%f in (*.sdcp) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=2048
for %%f in (*.bin) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=2048
for %%f in (*.str) do yadpcm2wav_gcc_v1.1b.exe "%%f" "%%~nf.wav" -freq=22050 -header=0
timeout /t 7
```

------------------------
How to use
------------------------

Place the yadpcm2wav_gcc_v1.1b.exe and convert.cmd files alongside the voice files (bin, str, yadpcm, adp, or whatever they may be named; you need to determine this first).

Run convert.cmd and it will start converting.

For different games, the header size may vary. As I recall, in Headhunter it is 48 bytes. Sometimes there is no header, just 0 (zero). In Magic and Silver, it is 2048. Others are rare but do exist.

In the batch file, specify the required sample rate for the desired format and the header size (in bytes).

If you simply run yadpcm2wav_gcc_v1.1b.exe without specifying anything, it will start and prompt you to select a file. In this case, you can only select one file, and the default settings as specified in the yadpcm2wav.ini file will be used.

The yadpcm2wav.ini file looks like this:
```
[Settings]
freq=22050
header=2048
```

Change the sample rate there if needed. After that, if you run yadpcm2wav_gcc_v1.1b.exe, you can select a file and it will convert it. For multiple files, use the batch file as shown above.

MIT License, probably. The idea was taken from GitHub and adapted for C++ and Python realities, with modifications. Use at your own risk.

Conkwer, 2024