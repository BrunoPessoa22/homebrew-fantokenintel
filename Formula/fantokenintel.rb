class Fantokenintel < Formula
  desc "CLI for Fan Token Intel -- market data, signals & whale tracking"
  homepage "https://fantokenintel.vercel.app"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.9/fti_darwin_arm64.tar.gz"
      sha256 "080057853ec153a694d1e8992de2df9f6b4ab869615c0b4d6698e3d52f245a56"
    else
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.9/fti_darwin_amd64.tar.gz"
      sha256 "7bfed9f5ee39376835ce3a999c6651b5baa68872d930f24ac554305dea3f45ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.9/fti_linux_arm64.tar.gz"
      sha256 "2db7c76a03c3ad10a3460cea42614005128f6d35774525abcf70ac6c852d7bdc"
    else
      url "https://github.com/BrunoPessoa22/fantokenintel-cli/releases/download/v0.1.9/fti_linux_amd64.tar.gz"
      sha256 "d30e610e08f97c05d79f9887720f6e12227883bd7a7b9511e7a353e98034373b"
    end
  end

  def install
    bin.install "fti"
  end

  test do
    system "\#{bin}/fti", "--version"
  end
end
