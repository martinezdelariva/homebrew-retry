class Retry < Formula
  desc "The missing command-line tool to execute the same command several times"
  homepage "https://github.com/martinezdelariva/retry"
  url "https://github.com/martinezdelariva/retry/archive/v0.1.tar.gz"
  sha256 "1a0aec4a7e02530485d9af17ee119d2256bee47cdbdf13c282a62113b039687a"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/retry"
  end

  test do
    system "#{bin}/retry", "--version"
  end
end
