class Retry < Formula
  desc "The missing command-line tool to execute the same command several times"
  homepage "https://github.com/martinezdelariva/retry"
  url "https://github.com/martinezdelariva/retry/releases/download/v0.3.0/retry-mac"
  sha256 "010d62d2fc1d496972f1fffcfa46073ccfaf1b8e0de9b19b3af027d166423e6f"

  def install
    system "mv", "retry-mac", "retry"
    bin.install "retry"
  end

  test do
    system "#{bin}/retry", "--version"
  end
end
