# Authing

A simple python wrapper around the LocalAuthentication API on iOS/MacOS.

Compilation:

```shell
swiftc Sources/authing/authing.swift  -emit-library
```

This produces a libauthing.dylib.

#### Note
The current python module implementation relies on the packaged lib being local.

Other options would be to move things globally (and update the module):

```shell
cp mv libauthing.dylib /usr/lib64/python3.9/lib-dynload
cp authing.py /usr/local/lib/python3.9/site-packages
```

#### Sample local usage

```shell
❯ swiftc Sources/authing/authing.swift  -emit-library
❯ python
Python 3.9.7 (default, Jan 27 2022, 19:47:28)
[Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import authing
>>> authing.auth("Your authentication message")
True
>>>
```

![Authentication message](authing.png)