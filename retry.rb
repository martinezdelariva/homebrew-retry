class Retry < Formula
  desc "The missing command-line tool to execute the same command several times"
  homepage "https://github.com/martinezdelariva/retry"
  url "https://github.com/martinezdelariva/retry/releases/download/v0.2/retry-mac"
  sha256 "0a5a859bf0b8c108d3cd5bc5aaa520848138dcd07fd3d9ea8005dd899122df17"

  def install
    system "mv", "retry-mac", "retry"
    bin.install "retry"
  end

  test do
    system "#{bin}/retry", "--version"
  end
end
