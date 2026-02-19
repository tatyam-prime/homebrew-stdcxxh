# homebrew-stdcxxh

日本語 | [English](./README.md)

この Homebrew Tap は、Clang 環境での競技プログラミング向けに [`bits/stdc++.h`](https://github.com/tatyam-prime/homebrew-stdcxxh/blob/src/bits/stdc++.h) のヘッダファイルをインストールします。

## インストール

```bash
brew tap tatyam-prime/stdcxxh
brew install stdcxxh
# デフォルトの include path に `$(brew --prefix)/include` を追加
echo 'export CPLUS_INCLUDE_PATH="'$(brew --prefix)'/include:${CPLUS_INCLUDE_PATH}"' >> ~/.zshrc
export CPLUS_INCLUDE_PATH="$(brew --prefix)/include:${CPLUS_INCLUDE_PATH}"
```

動くことを検証するには:

```bash
echo '#include <bits/stdc++.h>' | clang++ -std=c++23 -fsyntax-only -xc++ -
```

## コンパイルするには

`#include <bits/stdc++.h>` を含むコードをコンパイルするには、Homebrew の include path を以下のように指定します:

```bash
clang++ main.cpp -I"$(brew --prefix)/include"
```

以下のように環境変数に追加しておけば、毎回 `-I"$(brew --prefix)/include"` を指定する必要がなくなります:

```bash
echo 'export CPLUS_INCLUDE_PATH="'$(brew --prefix)'/include:${CPLUS_INCLUDE_PATH}"' >> ~/.zshrc
export CPLUS_INCLUDE_PATH="$(brew --prefix)/include:${CPLUS_INCLUDE_PATH}"
``` 

## この Tap が何を実行するか確認する

[Formula/stdcxxh.rb](./Formula/stdcxxh.rb)
