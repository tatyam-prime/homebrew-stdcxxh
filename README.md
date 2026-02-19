# homebrew-stdcxxh

[日本語](./README.ja.md) | English

This Homebrew Tap installs the [`bits/stdc++.h`](https://github.com/tatyam-prime/homebrew-stdcxxh/blob/src/bits/stdc++.h) header for competitive programming in a Clang environment.

## Install

```bash
brew tap tatyam-prime/stdcxxh
brew install stdcxxh
# add `$(brew --prefix)/include` to default include path
echo 'export CPLUS_INCLUDE_PATH="'$(brew --prefix)'/include:${CPLUS_INCLUDE_PATH}"' >> ~/.zshrc
export CPLUS_INCLUDE_PATH="$(brew --prefix)/include:${CPLUS_INCLUDE_PATH}"
```

Verify:

```bash
echo '#include <bits/stdc++.h>' | clang++ -std=c++23 -fsyntax-only -xc++ -
```

## How to compile

To compile C++ code that includes `bits/stdc++.h`, specify Homebrew's include path:

```bash
clang++ main.cpp -I"$(brew --prefix)/include"
```

To avoid specifying `-I"$(brew --prefix)/include"` every time, you can add it to your environment:

```bash
echo 'export CPLUS_INCLUDE_PATH="'$(brew --prefix)'/include:${CPLUS_INCLUDE_PATH}"' >> ~/.zshrc
export CPLUS_INCLUDE_PATH="$(brew --prefix)/include:${CPLUS_INCLUDE_PATH}"
```

## Read what this Tap will do

[Formula/stdcxxh.rb](./Formula/stdcxxh.rb)
