# Clive

Claude Code usage... Live! Meet Clive. :)

A macOS menu bar app that displays your [Claude Code](https://docs.anthropic.com/en/docs/claude-code) usage statistics at a glance.

![Screenshot](image.png)

![macOS](https://img.shields.io/badge/macOS-14.0+-blue)
![Swift](https://img.shields.io/badge/Swift-5.9+-orange)
![License](https://img.shields.io/badge/License-MIT-green)

## Features

- **Real-time usage tracking** - Monitor your Claude Code session and weekly usage limits
- **Multiple display modes**:
  - Text: Shows percentages directly (e.g., `CC: 45% (32% weekly)`)
  - Pie Charts: Visual representation with two pie charts
  - Bar Charts: Stacked horizontal bars
- **Color-coded indicators** - Green (<70%), Orange (70-89%), Red (90%+)
- **Configurable refresh intervals** - From 1 minute to 30 minutes
- **Session reset times** - See when your session usage will reset

## Disclaimer

Honestly, I vibe coded this thing in the space of an hour. It works for me, hopefully it works for you too. I just wanted to be able to keep an eye on my token budget without having to manually go looking for it.

## Requirements

- macOS 14.0 or later
- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed at `/opt/homebrew/bin/claude`

## Installation

Clive is just a hobby project and the releases are unsigned. You've got two options:

### 1. Gatekeeper bypass
1. Download the release .zip and unzip it.
2. Try to open the app - You'll get a dialog saying it "cannot be opened because it is from an unidentified developer"
3. Open System Settings → Privacy & Security
4. Scroll down to the "Security" section - You should see a message like:
5. "Clive" was blocked from use because it is not from an identified developer. Click "Open Anyway"
6. Enter your password or use Touch ID to confirm
7. Click "Open" in the final confirmation dialog

### 2. Built it in Xcode yourself
1. Clone this repository
2. Open `clive.xcodeproj` in Xcode
3. Build and run (⌘R)
4. Optionally, add to Login Items for auto-start

### 3. Install via Homebrew
```bash
brew install https://raw.githubusercontent.com/StuartCameronCode/clive/main/HomebrewFormula/clive.rb
```

After installation, you can open Clive with:
```bash
open $(brew --prefix)/Clive.app
```

Or create a symlink to Applications:
```bash
ln -s $(brew --prefix)/Clive.app /Applications/Clive.app
```

To upgrade to a newer version:
```bash
brew upgrade clive
```

> **Note:** Once you create the symlink, it automatically points to the latest version after upgrades—no need to recreate it.

## Usage

Once running, Clive appears in your menu bar showing your Claude Code usage. Click the icon to see:

- **Session usage** - Current session percentage and reset time
- **Weekly usage** - Current week's percentage

Access Settings (⌘,) to configure:
- Display mode (Text, Pie Charts, or Bar Charts)
- Refresh interval (1-30 minutes)

## How It Works

Clive periodically runs `claude /usage` to fetch your current usage statistics and displays them in the menu bar. The app parses the output to extract session and weekly usage percentages.
No hacking of session tokens etc required :).

## License

MIT License - see [LICENSE](LICENSE) for details.
