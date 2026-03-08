cask "clicky" do
  version "0.1.1"
  sha256 "b9bcd5b22e7ff1909f18a52e1638f3b6c08e00e64c3e93298a033c4f1fafba36"

  url "https://github.com/SegwiseHQ/clicky/releases/download/v#{version}/clicky-macos-arm64.zip"
  name "Clicky"
  desc "Free, lightweight ClickHouse desktop client"
  homepage "https://github.com/SegwiseHQ/clicky"

  depends_on arch: :arm64

  app "clicky.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/clicky.app"]
  end

  zap trash: [
    "~/Library/Application Support/clicky",
  ]
end
