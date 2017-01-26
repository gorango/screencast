# Linux screen capture

Uses [CVLC](#) (command-line VLC) to record an ongoing screen session in Linux.

Requires [VLC](#) to be installed.

## Usage

To save a new video file in the current folder:

```
screencast
```

To save a new video file in a new/existing folder `foo`:

```
screencast -d foo # -d or --directory
```

New files will be named `screencast-<year><month><day><hour><minute>.mp4`

### Important

In order to finish recording and save the video file, enter `quit` in the original console.

Do not close with `ctrl-c` as it can corrupt the file!

