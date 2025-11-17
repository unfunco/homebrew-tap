class T < Formula
  desc "Manage your todo lists in the CLI."
  homepage "https://github.com/unfunco/t"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/unfunco/t/releases/download/v0.2.0/t_0.2.0_Darwin_x86_64.tar.gz"
    sha256 "9e89db4ec64f0eed4350dfaf6c45b70a83e239a08c558e294ac68bbf4191693b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/unfunco/t/releases/download/v0.2.0/t_0.2.0_Darwin_arm64.tar.gz"
    sha256 "3526f3ad52c2630ec494cc3212e5b678da55d7ce8d2bf4e300a302d89b8da189"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/unfunco/t/releases/download/v0.2.0/t_0.2.0_Linux_x86_64.tar.gz"
    sha256 "bb8a4398dbf68ab56e8a78d33de84c6c40af0d8002fd0a76edcd02d53acb99dc"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/unfunco/t/releases/download/v0.2.0/t_0.2.0_Linux_arm64.tar.gz"
    sha256 "c0b798cea836dd245b6d5cd319b6a503c16b50e763449d4eb2f8fe66e270d4b7"
  end

  conflicts_with "t"

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t --version"
  end
end
