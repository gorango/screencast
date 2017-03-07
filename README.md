# Linux screen capture

Uses [CVLC](#) (command-line VLC) to record an ongoing screen session in Linux.

Requires [VLC](#) to be installed.

## Usage

To save a new video file in the current folder:

```
screencast
```

Pass `-d` or `--directory` to save a new video file in a new or existing folder `foo`:

```
screencast -d foo
```

New files will be named `screencast-<year><month><day><hour><minute>.mp4`

### Important

In order to finish recording and save the video file, enter `quit` in the original console.

Do not close with `ctrl-c` as it can corrupt the file!

## Notes

- Doesn't display cursor in output
  - There is a way to provide a custom PNG to overlay cursor movements
    - BUT! Cursor won't change as it does on usual interactive elements (text, buttons, etc) 
- Obvious lag in final output
  - FPS flag doesn't seem to change the output framerate
