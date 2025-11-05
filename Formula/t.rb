class T < Formula
  desc "Manage todo lists in the CLI."
  homepage "https://github.com/unfunco/t"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/unfunco/t/releases/download/v0.1.1/t_0.1.1_Darwin_x86_64.tar.gz"
    sha256 "68b72b8c30e030f0cd517402f98adee0d6747ad15d312e6ef2ddd3217949328a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/unfunco/t/releases/download/v0.1.1/t_0.1.1_Darwin_arm64.tar.gz"
    sha256 "73ebf99335d2d6ab526f50deb844721bca9e696452ed646f1c8012a89d9313bf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/unfunco/t/releases/download/v0.1.1/t_0.1.1_Linux_x86_64.tar.gz"
    sha256 "6e1dcf506e594cdda4db1dd15e2893ea0a438fa1a9ef24590b780f5eaeb5dd58"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/unfunco/t/releases/download/v0.1.1/t_0.1.1_Linux_arm64.tar.gz"
    sha256 "fe47603381625064b3a7ebe0ff2587cd70306f1fe0f1ae8c811034af65d6cb94"
  end

  conflicts_with "t"

  def install
    bin.install "t"
  end

  test do
    system "#{bin}/t --version"
  end
end
