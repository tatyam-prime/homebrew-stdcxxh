class Stdcxxh < Formula
  desc "Header bits/stdc++.h for CP in Clang environment"
  homepage "https://github.com/tatyam-prime/homebrew-stdcxxh"
  url "https://github.com/tatyam-prime/homebrew-stdcxxh/archive/refs/tags/v1.0.tar.gz"
  sha256 "729b487243ff4981cfa1e4c7a85dcc674f0faa2a3d244500b42d6cc306ae09b6"
  license "CC0-1.0"

  def install
    # Install headers
    include.install "bits"
  end

  def caveats
    msg = +"\n"
    msg << "To compile C++ code with stdc++.h, run:\n\n"
    msg << "    clang++ main.cpp -I\"#{HOMEBREW_PREFIX}/include\"\n\n"

    msg << "To avoid specifying `-I\"#{HOMEBREW_PREFIX}/include\"` every time, "
    msg << "you can add it to your environment:\n\n"
    msg << "    echo 'export CPLUS_INCLUDE_PATH=\"#{HOMEBREW_PREFIX}/include:${CPLUS_INCLUDE_PATH}\"' >> ~/.zshrc\n"
    msg << "    export CPLUS_INCLUDE_PATH=\"#{HOMEBREW_PREFIX}/include:${CPLUS_INCLUDE_PATH}\"\n\n"

    msg
  end

  test do
    (testpath/"main.cpp").write <<~CPP
      #include <bits/stdc++.h>
      int main() { std::vector<int> v = {1,2,3}; std::sort(v.begin(), v.end()); }
    CPP
    system ENV.cxx, "main.cpp", "-std=c++23", "-I#{include}", "-fsyntax-only"
  end
end
