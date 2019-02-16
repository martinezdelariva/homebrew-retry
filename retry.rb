class Retry < Formula
  desc "The missing command-line tool to execute the same command several times"
  homepage "https://github.com/martinezdelariva/retry"
  url "https://github.com/martinezdelariva/retry/archive/v0.2.tar.gz"
  sha256 "71f46b91248116a8b3c8c484af45ebc62cba644f76c669d5944d9b7fa84c7eba"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/retry"
  end

  test do
    system "#{bin}/retry", "--version"
  end
end
