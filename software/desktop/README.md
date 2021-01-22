# DMX Demonstrator Companion App

## Overview

This is the desktop companion app for the DMX Demonstrator. This app will help you setup and configure the DMX Demonstrator and server is a display surface suitable for a projector in a classroom or ballroom setting.

---

## Install

*macOS 10.10+, Linux, and Windows 7+ are supported (64-bit only).*

**macOS**

[**Download**](https://github.com/crazy-giraffe-software/dmxdemonstrator/releases/latest) the `.dmg` file.

**Linux**

[**Download**](https://github.com/crazy-giraffe-software/dmxdemonstrator/releases/latest) the `.AppImage` or `.deb` file.

*The AppImage needs to be [made executable](http://discourse.appimage.org/t/how-to-make-an-appimage-executable/80) after download.*

**Windows**

[**Download**](https://github.com/crazy-giraffe-software/dmxdemonstrator/releases/latest) the `.exe` file.

---

## Development

Built with [Electron](https://electronjs.org).

### Run

```
$ npm install
$ npm start
```

During `npm install`, if you see this error:
```
  prebuild-install WARN install EBUSY: resource busy or locked, open 'E:\OpenSource\dmxdemonstrator\software\desktop\node_modules\@serialport\bindings\build\Release\bindings.node'

  ⨯ cannot execute  cause=exit status 1
                    out=
    > @serialport/bindings@9.0.4 install E:\OpenSource\dmxdemonstrator\software\desktop\node_modules\@serialport\bindings
    > prebuild-install --tag-prefix @serialport/bindings@ || node-gyp rebuild
...
    gyp ERR! clean error
    gyp ERR! stack Error: EPERM: operation not permitted, unlink 'E:\OpenSource\dmxdemonstrator\software\desktop\node_modules\@serialport\bindings\build\Release\bindings.node'
```

Close VS Code. VS Code take a lock on bindings.node, causing unlink to fail. With VS Code closed, `npm install` should work fine.

### Publish

```
$ npm run release
```

After Travis finishes building your app, open the release draft it created and click "Publish".
