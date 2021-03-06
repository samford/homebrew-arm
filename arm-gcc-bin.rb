require 'formula'

class ArmGccBin < Formula
    desc 'GNU Arm Embedded Toolchain - Pre-built GNU toolchain for Arm Cortex-M and Cortex-R processors'
    homepage 'https://developer.arm.com/open-source/gnu-toolchain/gnu-rm'

    url 'https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-mac.tar.bz2'

    sha256 'bed12de3565d4eb02e7b58be945376eaca79a8ae3ebb785ec7344e7e2db0bdc0'
    version '10-2020-q4-major'

    def install
        bin.install Dir["bin/*"]
        prefix.install Dir["arm-none-eabi", "lib", "share"]
    end
end
