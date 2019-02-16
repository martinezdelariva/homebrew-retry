class Retry < Formula
  desc "The missing command-line tool to execute the same command several times"
  homepage "https://github.com/martinezdelariva/retry"
  url "https://github.com/martinezdelariva/retry/releases/download/v0.2.2/retry-mac"
  sha256 "5aac3953a4c2ce0ce874cb6c0c97a81d58664c3961f4b1787cf11ca672750d19"

  def install
    system "mv", "retry-mac", "retry"
    bin.install "retry"
  end

  test do
    system "#{bin}/retry", "--version"
  end
end
