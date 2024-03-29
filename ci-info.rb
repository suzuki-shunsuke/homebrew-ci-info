# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CiInfo < Formula
  desc "Get CI related information"
  homepage "https://github.com/suzuki-shunsuke/ci-info"
  version "2.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ci-info/releases/download/v2.1.3/ci-info_2.1.3_darwin_amd64.tar.gz"
      sha256 "3924ed8223b3e3d4fb8ae011c730cbc11dd05db01eb7e1e9635a4ad7220c7ddb"

      def install
        bin.install "ci-info"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/ci-info/releases/download/v2.1.3/ci-info_2.1.3_darwin_arm64.tar.gz"
      sha256 "71ef22031ae9ab383653fcf4dfffe41c57cfc242b89b87510d65484c7c6bb3a0"

      def install
        bin.install "ci-info"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/ci-info/releases/download/v2.1.3/ci-info_2.1.3_linux_arm64.tar.gz"
      sha256 "af0bc274f3823e1895d3477f4f18356342db867dc1188085d08f48d4aec8333c"

      def install
        bin.install "ci-info"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/ci-info/releases/download/v2.1.3/ci-info_2.1.3_linux_amd64.tar.gz"
      sha256 "51c75f37058dd1b9f1a2ea011057bd9911cdc6c1ddaae42017b680e295dc5076"

      def install
        bin.install "ci-info"
      end
    end
  end

  test do
    system "#{bin}/ci-info --version"
  end
end
