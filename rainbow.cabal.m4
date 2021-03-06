name:                rainbow
version:             pv_rainbow
synopsis:            Print text to terminal with colors and effects
description:
  rainbow helps you print Text chunks to a terminal with colors and effects
  such as bold, underlining, etc. You pair each Text with a description
  of how it should appear. Rainbow works with both 8-color and 256-color
  terminals.

  .

  rainbow uses the terminfo package which, in turn, needs the full C
  library for ncurses installed, including the development
  headers. Before installing terminfo, you may need to install the
  ncurses headers (for instance, on Debian systems, install the
  libncurses5-dev package.)

homepage:            http://github.com/massysett/rainbow
license:             BSD3
license-file:        LICENSE
author:              Omari Norman
maintainer:          omari@smileystation.com
stability:           experimental
copyright:           2013-2014 Omari Norman
category:            System
build-type:          Simple
cabal-version:       >=1.8
extra-source-files:
  README.md, sunlight-test.hs,
  minimum-versions.txt, current-versions.txt

tested-with: GHC ==7.4.1, GHC ==7.6.3

source-repository head
    type: git
    location: git://github.com/massysett/rainbow.git

library
  exposed-modules:
      System.Console.Rainbow
    , System.Console.Rainbow.Types
    , System.Console.Rainbow.Colors
    , System.Console.Rainbow.ColorChunks
    , System.Console.Rainbow.Lazy
    , System.Console.Rainbow.Lazy.Types
    , System.Console.Rainbow.Lazy.ColorChunks

  build-depends:
      base >= pv_base && < pv_base_max
    , terminfo >= pv_terminfo
    , text >= pv_text

  ghc-options: -Wall
  hs-source-dirs: lib
