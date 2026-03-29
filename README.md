# Furnace SMPS2ASM Exporter

This is a fork of Tildearrow's Furnace tracker which adds the option to export to SMPS2ASM.
SMPS (Sample Music Playback System) is a family of sound drivers used by a variety of games on the Sega Genesis, among other Sega systems.
SMPS2ASM is a format for disassembling SMPS data so that it can more easily be edited and ported between variations of SMPS drivers.
The aim of this fork is to allow Sega Genesis songs to be converted to files that can run in SMPS drivers with as much accuracy as the driver allows and without requiring the user to tweak the result post-export.
There are a variety of options to choose from when exporting, including several variations on the SMPS2ASM format, such as [Flamewing's version](https://github.com/Brainulator9/SMPS2ASM-flamewing), the one used for [MD Music Player](https://github.com/Awuwunya/SMPS2ASM2), one compatible with the [AMPS sound driver](https://github.com/Awuwunya/AMPS), and the one used in the original [SMPS source code](https://github.com/superctr/SMPS).

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/M4M8DHBVO)

## How to use

Exporting your Furnace module to an SMPS2ASM files is simply a matter of choosing "file/export..." and selecting SMPS2ASM, choosing your options, and hitting "Export".
However, in order to ensure that no adjustments need to be made post-export, some considerations will need to be made beforehand to ensure that the result is accurate and makes full use of your chosen sound driver:
- The maximum speed a song can play at is one step per frame. If there's one beat per step, this comes out to about 3600 BPM on NTSC systems or 3000 BPM on PAL systems. This is just because most games run the sound driver once per frame.
- In SMPS, FM instruments are song specific while PSG volume envelopes and PCM samples are universal.  This exporter will export FM instruments only. PSG volume macros and PCM sample can only be referenced. All other macros will be accounted for in the song data.
  - The template files provided include recreations of the PSG envelopes and PCM samples used in some specific variations of SMPS. You must either restrict your options to the ones provided by these templates, or modify the sound driver of the game you're exporting to as well as the SMPS2ASM constants file to add the new PSG envelopes and samples that you want to use.
- PSG envelopes will be identified by a 2 digit hexadecimal number in the instrument name. If it fails to find a valid number, it will default to the instrument's number.
- PCM samples should be named after a valid drum name. These always start with a lowercase "d" followed by a capital letter. Everything in the instrument name after a space will be ignored, so a more accurate description can be put there if desired.
- There are a number of techniques the user can use to reduce the size of the result:
  - Remove redundant patterns
  - Use a larger step ratio
  - Avoid the use of lengthy macros

## Bugs
- Parts swap between being quieter and louder (High Hazard)

Lesser importance:
- Setting the step size ratio to a non-integer causes notes to be skipped
- Turning off linear pitch mode causes the FM parts to be pitched down
- In Source style, there may be more than 16 bytes per line, notably when setting vibrato

## To do

Before the 1.0 release:
- Header values
  - PSG name
- Effects
  - 01 Pitch slide up
  - 02 Pitch slide down
  - 03 Portamento
  - 04 Vibrato
  - E1 Note slide up
  - E2 Note slide down
  - EC Note cut
  - F1 Pitch change up
  - F2 Pitch change down
- Improve pattern identification
  - Don't consider volume when determing macro length in PSG
  - Ignore macro length when first note of the pattern is played or silent
    - Make exception for 03 and ED
    - Also ignore if EC 00 is used
  - Add legato to pattern identifiers
  - Figure out cases where macro length is 00 versus FF
- Start first pattern with a rest if a note isn't immediately played
- If vibrato is interrupted, continue from anticipated point rather than where it left off at

Post 1.0 release (higher demand features take priority):
- Effects
  - 00 Arpeggio
  - 07 Tremolo
  - 09 Set groove pattern
  - OC Retrigger
  - 0F Set speed
  - Cx Set tick rate (hz)
  - D3-D4 Volume portamento
  - DC Delayed mute
  - E0 Set arp speed
  - E1 Note slide up
  - E2 Note slide down
  - E4 Set vibrato range
  - E6 Quick legato
  - E7 Macro release
  - E8 Quick legato up
  - E9 Quick legato down
  - F0 Set tick rate (tempo)
  - F5 Disable macro
  - F6 Enable macro
  - F7 Restart macro
  - F8 Single tick volume up
  - F9 Single tick volume down
  - FC Note release
  - FD Virtual tempo numerator
  - FE Virtual tempo denominator
- Detune pitch slide option
- Multiple speeds/grooves
- SFX option
- Use selected subsong
- Swap between PSG3 and noise channels
- Split FM6 from PCM
- SMS export
- Pitched PCM mode (AMPS only)
- ADSR and oscillating macros
- FM macros
- Virtual tempo
- Additional options
  - Only use initial offset values
- Patch modifiers (Each modification creates a new instrument)
  - 11 Feedback
  - 12 Op 1 Level
  - 13 Op 2 Level
  - 14 Op 3 Level
  - 15 Op 4 Level
  - 16 Multiplier
  - 19 Attack of all 4
  - 1A Op 1 Attack
  - 1B Op 2 Attack
  - 1C Op 3 Attack
  - 1D Op 4 Attack
  - 56 Decay of all 4
  - 57 Op 1 Decay
  - 58 Op 2 Decay
  - 59 Op 3 Decay
  - 5A Op 4 Decay
  - 5B Decay 2 of all 4
  - 5C Op 1 Decay 2
  - 5D Op 2 Decay 2
  - 5E Op 3 Decay 2
  - 5F Op 4 Decay 2
  - 60 Operator Mask
  - 61 Algorithm
  - 63 LFO AM Depth

Unsupported effects:
- 05 Volume slide + vibrato (compatibility only)
- 06 Volume slide + portamento (compatibility only)
- 10 Setup LFO (not possible with SMPS)
- 30 Toggle hard envelope reset (not possible?)
- 62 LFO FM depth (not possible with SMPS)
- 80-84 Set panning (redundant)
- 90-92 Set sample offset (can't edit samples)
- DF Set sample playback (can't edit samples)
- E3 Set vibrato shape (might change mind on this)

## FAQ

### How do I submit a bug report?

I'm anticipating that the vast majority of bugs reported will be from modules where an expected feature doesn't translate to SMPS correctly. In these cases you can use the Issues tab or bug me anywhere you can find me. All I require is a brief explanation of the issue, but any of these in addition would be helpful:
- Which options you had selected
- Linking a .fur with the issue (ideally with said issue isolated)
- Description of ways in which you varied conditions in order to determine in what cases the bug occurs
- An edited .asm output which shows what you expect the output to be

I will dismiss any bug reports that fit any of the criteria:
- Occur due to a planned unimplemented feature
- Occur due to a limitation of the sound driver or any iteration of it (assuming there is no feasible alternative fix)
- Are an issue that is too insubstantial to be worth the work required to fix it (e.g. how pitch slides aren't linear in SMPS)
- Are an issue that is inhereted from the unmodified version of Furnace being worked off of

In the cases of crashes, send me your crash log. On Windows, it can be found in C:/Users/*username*.

### How will planned features be prioritized?

I don't tend to have a set order for implementing stuff. However, you are free to contact me anywhere to request for me to prioritize anything unimplemented and I will try my best to do so. It helps if you can provide a .fur file that demonstrates how useful the feature is. As a side note, tipping me on Ko-fi is a great motivating factor for me to spend more time working on this, and if you give me any amount I'll be more likely to prioritize your request over others.

### How do I access development builds?

GitHub will automatically compile builds after every push to the repo. They can be found in the Actions tab.

### Is a pre-assembled (.bin) export option planned?

No. Doing that would require a substantial amount of work for what amounts to a minor convenience, and I'd much rather spend that time improving compatibility through stuff like supporting more effects. If you want to assemble an smps2asm file, it's just a matter of using an assembler and including the appropriate header file (usually named something like "_smps2asm_inc.asm").

### Do you have plans for further optimizations using loops such as what SMPSOpt does?

Not at the moment, though I may end up being convinced otherwise. As earlier stated, I want to prioritize maximum compatibility over all else. If you want your song optimized, SMPSOpt is a very helpful tool, though keep in mind it only works with pre-assembled files.

### Do you plan on adding support for MML?

This one's up in the air for me since it would be a lot of work but a worthwhile payoff that can hopefully make MDSDRV more accessible to musicians. Because it will essentially be a separate project, I want to wait until this project is much closer to completion.

Below is unchanged from the original README.md

---
# Furnace (chiptune tracker)

![screenshot](papers/screenshot3.png)

the biggest multi-system chiptune tracker ever made!

[mini-site](https://tildearrow.org/furnace/) | [downloads](#downloads) | [installation](#installation) | [Unix/Linux packages](#packages)

[documentation/discussion/help](#quick-references) | [developer info](#developer-info)

---
## downloads

check out the [Releases](https://github.com/tildearrow/furnace/releases) page. available for Windows, macOS and Linux.

for other operating systems, you may [build the source](#developer-info).

[see here](https://nightly.link/tildearrow/furnace/workflows/build/master) for the latest unstable build.

## installation

- **Windows:** extract the .zip into a new directory for Furnace (or one you've created before). make a shortcut for `furnace.exe` if you wish.
- **macOS:**  drag `Furnace` into the Applications directory (or the folder of your choice). drag everything else into a separate directory.
  - when opening Furnace for the first time, make sure to right-click the Furnace app icon and then select Open.
- **Linux/other:** instructions should be similar to Windows, unless you decide to install using your package manager (see [Unix/Linux packages](#packages)).

## features

- a large selection of sound chips:
  - Yamaha FM chips:
    - YM2151 (OPM)
    - YM2203 (OPN)
    - YM2413 (OPLL)
    - YM2414 (OPZ) used in Yamaha TX81Z
    - YM2608 (OPNA) used in PC-98
    - YM2610 (OPNB) used in Neo Geo
    - YM2610B (OPNB2)
    - YM2612 (OPN2) used in Sega Genesis and FM Towns
    - YM3526 (OPL) used in C64 Sound Expander
    - YM3812 (OPL2)
    - YMF262 (OPL3) with full 4-op support!
    - YMF278 (OPL4) including sample channels
    - Y8950 (OPL with ADPCM)
  - ESS ESFM (like OPL3 but with more features)
  - square wave chips:
    - AY-3-8910/YM2149(F) used in several computers and game consoles
    - Commodore VIC used in the VIC-20
    - Microchip AY8930
    - TI SN76489 used in Sega Master System, BBC Micro, and many others
    - PC Speaker
    - Philips SAA1099 used in SAM Coupé
    - OKI MSM5232 used in some arcade boards
  - sample chips:
    - SNES
    - Amiga
    - SegaPCM - all 16 channels
    - Capcom QSound
    - Yamaha YMZ280B (PCMD8)
    - Ricoh RF5C68 used in Sega CD and FM Towns
    - OKI MSM6258 and MSM6295
    - Konami K007232
    - Konami K053260
    - Irem GA20
    - Ensoniq ES5506
    - Namco C140
    - Namco C219
  - wavetable chips:
    - HuC6280 used in PC Engine
    - Konami Bubble System WSG
    - Konami SCC/SCC+
    - Namco arcade chips (WSG/C15/C30)
    - WonderSwan
    - Seta/Allumer X1-010
    - Sharp SM8521 used in Tiger Game.com
  - NES (Ricoh 2A03/2A07), with additional expansion sound support:
    - Konami VRC6
    - Konami VRC7
    - MMC5
    - Famicom Disk System
    - Sunsoft 5B
    - Namco 163
    - Family Noraebang (OPLL)
  - SID (6581/8580) used in Commodore 64
  - Mikey used in Atari Lynx
  - ZX Spectrum beeper
    - SFX-like engine
    - QuadTone engine
  - Pokémon Mini
  - Commodore PET
  - TED used in Commodore Plus/4
  - Casio PV-1000
  - TIA used in Atari 2600
    - including software tuning engine (TIunA)
  - POKEY used in Atari 8-bit computers
  - **Game Boy**
    - including software envelopes (zombie mode)
  - Virtual Boy
  - Game Boy Advance
    - DMA (direct memory access) two channel mode
    - MinMod software driver by Natt Akuma
  - Nintendo DS
  - Watara Supervision
  - modern/fantasy:
    - Commander X16 VERA
    - tildearrow Sound Unit
    - PowerNoise
    - Bifurcator
    - SID2
    - SID3
    - Generic PCM DAC
- mix and match sound chips!
  - over 200 ready to use presets from computers, game consoles and arcade boards...
  - ...or create your own presets - up to 32 chips or a total of 128 channels!
- modular layout that you may adapt to your needs
- DefleMask compatibility
  - loads .dmf modules from all versions (beta 1 to 1.2.0)
  - saves .dmf modules - both modern and legacy
    - Furnace doubles as a module downgrader
  - loads/saves .dmp instruments and .dmw wavetables as well
  - clean-room design (guesswork and ABX tests only, no decompilation involved)
  - some bug/quirk implementation for increased playback accuracy through compatibility flags
- many export types:
  - VGM export
  - ZSM export for Commander X16
  - TIunA export for Atari 2600
  - SAP type R export for POKEY (playable by Altirra and [lzss-sap](https://github.com/dmsc/lzss-sap))
  - audio file export - entire song, per chip or per channel
- quality emulation cores (Nuked, MAME, SameBoy, Mednafen PCE, NSFplay, puNES, reSID, Stella, SAASound, vgsound_emu and ymfm)
- wavetable synthesizer
  - available on wavetable chips
  - create complex sounds with ease - provide up to two wavetables, select an effect and let go!
- MIDI input support
- additional features:
  - FM macros!
  - negative octaves
  - advanced arp macros
  - arbitrary pitch samples
  - sample loop points
  - SSG envelopes and ADPCM-B in Neo Geo
  - pitchable OPLL drums
  - full duty/cutoff range in C64
  - optional PCM channel in C64
  - full 16-channel SegaPCM
  - ability to change tempo mid-song
  - decimal tempo/tick rate
  - multiple sub-songs in a module
  - per-channel oscilloscope with waveform centering
  - built-in sample editor
  - chip mixing settings
  - built-in visualizer in pattern view
- open-source under GPLv2 or later/GPLv3. see [LICENSE](LICENSE).

---

# quick references

- **help**:
  - new to Furnace? check out the [quick start guide](doc/1-intro/quickstart.md).
  - [documentation](doc/README.md).
  - [frequently asked questions (FAQ)](doc/1-intro/faq.md).
- **discussion**: see the [Discussions](https://github.com/tildearrow/furnace/discussions) section, or the [Discord](https://discord.gg/QhA26dXD23).
  - these are the only **official** discussion channels for Furnace. **any other places are not official and not managed by me (tildearrow).**
  - no, there isn't an official Furnace Facebook group. the one that seemingly exists isn't mine.

## packages

[![Packaging status](https://repology.org/badge/vertical-allrepos/furnace.svg)](https://repology.org/project/furnace/versions)

some people have provided packages for Unix/Unix-like distributions. here's a list.

- **Flatpak**: yes! Furnace is now available on [Flathub](https://flathub.org/apps/org.tildearrow.furnace) thanks to ColinKinloch.
- **Arch Linux**: [furnace](https://archlinux.org/packages/extra/x86_64/furnace/) is in the official repositories.
- **Chimera Linux**: [furnace](https://pkgs.chimera-linux.org/package/current/contrib/x86_64/furnace) is in the contrib repository.
- **FreeBSD**: [a package in ports](https://www.freshports.org/audio/furnace/) is available courtesy of ehaupt.
- **Nix**: [package](https://search.nixos.org/packages?channel=unstable&show=furnace&from=0&size=50&sort=relevance&type=packages&query=furnace) thanks to OPNA2608.
- **openSUSE**: [a package](https://software.opensuse.org/package/furnace) is available, courtesy of fpesari.
- **Void Linux**: [furnace](https://github.com/void-linux/void-packages/tree/master/srcpkgs/furnace) is available in the official repository.

---
# unstable builds

[![Build furnace](https://github.com/tildearrow/furnace/actions/workflows/build.yml/badge.svg)](https://github.com/tildearrow/furnace/actions/workflows/build.yml)

if you can't download these artifacts (because GitHub requires you to be logged in), [go here](https://nightly.link/tildearrow/furnace/workflows/build/master) instead.

# developer info

the following section will teach you how to build Furnace from its source code.

## dependencies

these are the things you'll need to build Furnace:

- CMake
- Git (for cloning the repository)
- a C/C++ compiler (e.g. Visual Studio or MinGW on Windows, Xcode (the command-line tools are enough) on macOS or GCC on Linux)

read the sections below for information on how to set these up.

## development environment setup (Windows)

this little section will teach you how to get either Visual Studio or MinGW ready for building Furnace.

### MinGW through MSYS2

I recommend you to use this because the compiler produces faster builds and it doesn't use a lot of disk space.
there's some command line-fu in here, so I hope you're prepared.

install it through [MSYS2](https://www.msys2.org/), a Linux-like environment for Windows.
follow the guide **up to step 4**. **do NOT start MSYS2 from the installer** as this will start the wrong environment and prevent you from going further.

MSYS2 provides a variety of environments, but we'll work with the MINGW64 one.<br/>
these environments can be found in the Start menu, in a folder MSYS2 has created for you.<br/>
don't "run MSYS2 now". go to the Start menu and launch MSYS2 with the MINGW64 environment (blue icon).<br/>
**it is extremely important that you use this environment**. the one that MSYS2 starts with by default (UCRT64) is NOT suitable for this task and will NOT work.

we'll install a couple packages, including GCC, CMake, Git and Ninja.
type the following in the MSYS2 console, and then press Enter.

```
pacman -S mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja mingw-w64-x86_64-gcc git
```

when prompted to, type Y and press Enter again.

proceed to the "getting the source" section.

if it says UCRT64 anywhere in the console, YOU ARE IN THE WRONG ENVIRONMENT! if so quit MSYS2 NOW and start the MINGW64 environment.

### Visual Studio (the real one)

if you are patient enough, can stand 50GB of stuff and want the Microsoft experience, you may install [Visual Studio](https://visualstudio.microsoft.com) (no, not "Code"... that's just a text editor with IDE features). it is an easy-to-use IDE and compiler that comes in both free and paid versions.

the installer also lets you install Git and CMake. Visual Studio integrates nicely with these.
however I recommend you install Git standalone so you can clone the repo correctly.

## development environment setup (macOS)

install the Xcode command line tools. open a Terminal and type:

```
xcode-select --install
```

if you would like to, and are able to use the App Store, feel free to get Xcode instead.

## development environment setup (Linux/Unix-like)

get GCC, Git and CMake through your package manager.

you may also need the following dependencies:

- libpulse
- libx11
- libasound
- libGL
- JACK (optional)
- any other libraries which may be used by SDL

some Linux distributions (e.g. Ubuntu or openSUSE) will require you to install the `-dev`/`-devel` versions of these.

having libintl is recommended for locale support, but if it isn't present, Furnace will use its own implementation.

## getting the source

type the following on a terminal/console: (make sure Git is installed)

```
git clone --recursive https://github.com/tildearrow/furnace.git
cd furnace
```

(the `--recursive` parameter ensures submodules are fetched as well)

**NOTE: do not download the project's source as a .zip or .tar.gz as these do not include the project's submodules which are necessary to proceed with building. please use Git instead as shown in this section.**

## compilation

### Windows using MSVC/Visual Studio

if you've downloaded the entirety of Visual Studio, including the IDE:

#### let Visual Studio do the work for you

make sure you installed CMake through the Visual Studio installer.
just open the CMake project and you're good to go.

#### nah, leave it to me instead

make sure CMake is installed. `cd` to the Furnace directory and then:

```
mkdir build
cd build
cmake -G "Visual Studio 17 2022" ..
```

then open the solution file in Visual Studio and build.

### Windows using MSVC/Visual Studio (command line tools only)

open a developer tools command prompt, and run CMake as described in the previous section.

afterwards, build Furnace by using:

```
msbuild ALL_BUILD.vcxproj
```

### Windows using MinGW (through MSYS2)

open the MSYS2 MINGW64 environment. `cd` to the Furnace directory and then do:

```
mkdir build
cd build
cmake ..
ninja
```

### macOS, Linux and other Unix/Unix-like

the process is straightforward.

```
mkdir build
cd build
cmake ..
make
```

#### I like Xcode

on macOS you may do the following instead:

```
mkdir build
cd build
cmake -G Xcode ..
```

...and then load the project on Xcode or type `xcodebuild`.

### notes

once you've created the build directory with `mkdir`, you don't have to do that again. just `cd` to it when you want to build Furnace.

once you've run CMake successfully, you don't have to run it again every time you make a change. just run `make`, `ninja`, `xcodebuild` or `msbuild`.

## CMake options

to add an option from the command-line, add it before the two dots: `-D<NAME>=<VALUE>`  
Example: `cmake -DBUILD_GUI=OFF -DWARNINGS_ARE_ERRORS=ON ..`

Available options:

| Name                          |Default| Description
| :---------------------------: | :---: | ---------------------------------------------------------------------------------------------
| `BUILD_GUI`                   | `ON`  | Build the tracker (disable to build only a headless player)
| `WITH_LOCALE`                 | `ON`  | Enable language support
| `USE_RTMIDI`                  | `ON`  | Build with MIDI support using RtMidi
| `USE_SDL2`                    | `ON`  | Build with SDL2 (required to build with GUI)
| `USE_SNDFILE`                 | `ON`  | Build with libsndfile (required in order to work with audio files)
| `USE_BACKWARD`                | `ON`  | Use backward-cpp to print a backtrace on crash/abort
| `USE_FREETYPE`                | `OFF` | Build with FreeType support
| `USE_MOMO`                    | auto¹ | Build a libintl implementation instead of using the system one
| `WITH_JACK`                   | auto² | Whether to build with JACK support. Auto-detects if JACK is available
| `WITH_PORTAUDIO`              | `ON`  | Whether to build with PortAudio.
| `SYSTEM_FFTW`                 | `OFF` | Use a system-installed version of FFTW instead of the vendored one
| `SYSTEM_FMT`                  | `OFF` | Use a system-installed version of fmt instead of the vendored one
| `SYSTEM_LIBSNDFILE`           | `OFF` | Use a system-installed version of libsndfile instead of the vendored one
| `SYSTEM_RTMIDI`               | `OFF` | Use a system-installed version of RtMidi instead of the vendored one
| `SYSTEM_ZLIB`                 | `OFF` | Use a system-installed version of zlib instead of the vendored one
| `SYSTEM_SDL2`                 | `OFF` | Use a system-installed version of SDL2 instead of the vendored one
| `SYSTEM_FREETYPE`             | `OFF` | Use a system-installed version of FreeType instead of the vendored one
| `SUPPORT_XP`                  | `OFF` | Build a Windows XP-compatible binary
| `WARNINGS_ARE_ERRORS`         | `OFF`³| Whether warnings in furnace's C++ code should be treated as errors
| `WITH_DEMOS`                  | `OFF` | Install demo songs on `make install`
| `WITH_INSTRUMENTS`            | `ON`  | Install demo instruments on `make install`
| `WITH_WAVETABLES`             | `ON`  | Install wavetables on `make install`
| `SHOW_OPEN_ASSETS_MENU_ENTRY` | `OFF` | Show option to open built-in assets directory (on supported platforms)
| `CONSOLE_SUBSYSTEM`           | `OFF` | Build with subsystem set to Console on Windows
| `FORCE_APPLE_BIN`             | `OFF` | Enable installation of binaries (when doing `make install`) to PREFIX/bin on Apple platforms

(¹) enabled by default if both libintl and setlocale aren't present (MSVC and Android), or on macOS

(²) `ON` if system-installed JACK detected, otherwise `OFF`

(³) but consider enabling this and reporting any errors that arise from it!

## troubleshooting

sometimes things go wrong and you can't proceed any further.

this guide may help you in that case.

### "command not found", "not a valid command", and similar

either you forgot to install something, it's not in your PATH or **you are using the wrong environment**.

#### compiler

if building with the Visual Studio command line tools, make sure you have started the native tools command prompt. [Microsoft has a guide here](https://learn.microsoft.com/en-us/cpp/build/how-to-enable-a-64-bit-visual-cpp-toolset-on-the-command-line?view=msvc-170).


if building with MinGW, make sure you have started the MSYS2 MINGW64 environment (not the UCRT64 one!).

#### CMake or Git

did you install these?

if you installed them through Visual Studio or MinGW, you may have to set the environment as I described above.

### CMake errors

#### No source or binary directory provided

the two dots after the `cmake` command are important. it tells CMake where the CMakeLists.txt file is at (two dots mean "parent directory", which makes sense since we are in the `build` directory inside the Furnace repo).

read the compilation guide again.

#### add\_subdirectory missing

if it says something about a missing directory in `extern`, then either:

1. you didn't set up submodules, or
2. you downloaded the source as a .zip or .tar.gz. don't do this.

if 1, you may run `git submodule update --init --recursive`. this will initialize submodules.

if 2, clone this repo.

#### NMake Makefiles

if CMake says something about NMake, then it means it couldn't find Visual Studio, or it didn't feel like finding Visual Studio.

try running CMake again but tell it to use the Visual Studio generator (`-G "Visual Studio 17 2022"`). type `cmake --help` for a list of generators.

#### CMake was unable to find a build program

if you are on Windows, don't run CMake standalone unless you have Visual Studio or a compiler installed.

if you are in the MSYS2 MINGW64 environment, make sure you installed `mingw-w64-x86_64-cmake` instead of `cmake`. restart the environment after doing so.
if you are not, exit and start the MINGW64 environment (not the UCRT64 one!). read the guide!

if you are not using Windows then you probably haven't set your development environment up correctly. read the guide again.

#### Does not match the generator used previously

yeah I know you probably hit this error right now. delete the build directory (or just CMakeCache.txt and CMakeFiles) and try again.

#### The C compiler is not able to compile a simple test program

something is really wrong, or you are trying to use a compiler outside of an environment.
launch the appropriate environment and try again.

if you are using MSYS2, make sure you have launched the MINGW64 environment. do **not** install `gcc`! instead, install `mingw-w64-x86_64-gcc`.

#### ALSA API requested but no ALSA dev libraries found

if you are on Windows, using MSYS2, then you most likely disregarded the guide and are attempting to build in the UCRT64 environment. don't do that!

get out of the UCRT64 environment and start the MINGW64 one.

however, if you already are in the MINGW64 environment, then make sure you installed `mingw-w64-x86_64-cmake` instead of `cmake`. restart the environment after doing so.

otherwise, install the ALSA development libraries (libasound-dev or something like that).

also make sure you've installed the rest of dependencies so you don't hit one of the errors below...

#### Compatibility with CMake < 3.5 has been removed from CMake

immediately report this issue.
patch out every CMakeLists.txt and change the cmake\_minimum\_required() to comply for now.

### Furnace errors

#### The code execution cannot proceed because libintl-8.dll was not found

this is because sadly libintl (what we use for language support) only exists as a dynamic library (a .dll) on Windows. run CMake again with `-DUSE_MOMO=ON` and then build to fix it.

#### x11 not available/SDL not configured with OpenGL/GLX support

make sure you have installed the Mesa and X11 development libraries. use your package manager to do so.
re-build Furnace afterwards.

## console usage

(note: if on Windows, type `furnace.exe` instead, or `Debug\furnace.exe` on MSVC)

```
./furnace
```

this opens the program.

```
./furnace -console <file>
```

this will play a compatible file.

```
./furnace -console -view commands <file>
```

this will play a compatible file and enable the commands view.

**note that console mode may not work correctly on Windows. you may have to quit using the Task Manager.**

---

# footnotes

copyright (C) 2021-2026 tildearrow and contributors.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


Furnace is NOT affiliated with Delek or DefleMask in any form, regardless of its ability to load and save the .dmf, .dmp and .dmw file formats.
additionally, Furnace does not intend to replace DefleMask, nor any other program.

test