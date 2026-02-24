class Fantokenintel < Formula
  desc "CLI for Fan Token Intel -- market data, signals & whale tracking"
  homepage "https://fantokenintel.vercel.app"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.8/fti_darwin_arm64.tar.gz"
      sha256 "1844c9c7d6db022ae7a3ab504f42500aa425379858d9cf51fe07a48e7939587d"
    else
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.8/fti_darwin_amd64.tar.gz"
      sha256 "55aa20107aaa32c0893db0351befd41e05a241d468ac2d7a7816001393c008cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.8/fti_linux_arm64.tar.gz"
      sha256 "c6ebf321b366dce7eac1c75cb73955a0f64a3f33806fa993dd58130ae80804c5"
    else
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.8/fti_linux_amd64.tar.gz"
      sha256 "1bd0fe2f50fb833f402f60b37f25e83ccdacb3e4c862cb63a4e29a5c2950d238"
    end
  end

  def install
    bin.install "fti"
  end

  test do
    system "\#{bin}/fti", "--version"
  end
end
