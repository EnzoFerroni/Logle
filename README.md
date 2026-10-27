# Logle

[![iOS](https://img.shields.io/badge/iOS-26.2%2B-000000?logo=apple)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5-F05138?logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-MVVM-0A84FF)](https://developer.apple.com/xcode/swiftui/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

A Wordle-style iOS game where you guess famous company logos, loaded from the open logotypes.dev API.

## Table of Contents

- [About](#about)
- [How to Play](#how-to-play)
- [Built With](#built-with)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Challenge Checklist](#challenge-checklist)
- [Author](#author)
- [License](#license)

## About

Logle was built in a single afternoon for an Apple Developer Academy | Mackenzie technical
challenge: turn a design handoff into a working game that consumes a public API.
Each round shows a company logo and the player has to type the brand name.

## How to Play

- Guess the brand behind the logo. You have five attempts per round.
- Fewer attempts score more points: 1000, 500, 250, 100 or 50.
- Correct guesses grow your streak; endless mode keeps the rounds coming.

## Built With

- SwiftUI with MVVM (`GameViewModel`)
- [logotypes.dev](https://www.logotypes.dev) for SVG logos over HTTPS
- A small SVG renderer view for remote logos

## Getting Started

Requirements: Xcode 26 or later.

```bash
git clone https://github.com/EnzoFerroni/Logle.git
open Logle/Logle.xcodeproj
```

No API key is needed.

## Project Structure

```
Logle/
├── LogleApp.swift
├── Models/SVGModel.swift
├── ViewModel/GameViewModel.swift   Rounds, guesses, streak and scoring
└── View/
    ├── GameView.swift
    ├── SVGImage.swift
    └── Components/                 Input, guess rows, points and streak boxes
```

## Challenge Checklist

An honest self-assessment against the challenge requirements:

- [x] Consume the logotypes.dev API (logos come from a curated list, picked at random each round)
- [x] Full game mechanics: win, loss and guess validation
- [x] Reusable components
- [x] README with project instructions
- [ ] Pixel-perfect handoff reproduction (only part of the design was implemented; game logic came first)
- [ ] Strict MVVM throughout (some logic still lives in views)
- [ ] DocC documentation

## Author

<div align="center">
  <table>
    <tr>
      <td align="center" width="100%">
        <a href="https://github.com/EnzoFerroni"><img src="https://github.com/EnzoFerroni.png" width="90" alt="Enzo Ferroni"/></a>
        <br/><sub><b>Enzo Ferroni</b></sub><br/><br/>
        <a href="https://github.com/EnzoFerroni"><img src="https://skillicons.dev/icons?i=github" alt="GitHub"/></a>
        <a href="https://www.linkedin.com/in/enzoferroni/"><img src="https://skillicons.dev/icons?i=linkedin" alt="LinkedIn"/></a>
      </td>
    </tr>
  </table>
</div>

## License

Released under the [MIT License](LICENSE). Copyright (c) 2026 Enzo Ferroni.
