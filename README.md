# Clive

Claude Code usage... Live! Meet Clive. :)

A macOS menu bar app that displays your [Claude Code](https://docs.anthropic.com/en/docs/claude-code) usage statistics at a glance.

![Screenshot](image.png)

![macOS](https://img.shields.io/badge/macOS-14.0+-blue)
![Swift](https://img.shields.io/badge/Swift-5.9+-orange)
![License](https://img.shields.io/badge/License-MIT-green)

## Features

- **Real-time usage tracking** - Monitor your Claude Code session and weekly usage limits
- **Account display** - Shows the currently logged-in email address in the menu
- **Switch accounts** - Quickly switch Claude accounts via `claude auth login` from the menu (make sure the right browser profile is focused if you use 2 profiles that are signed into 2 different claude accounts)
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

Just extrat the app and drag & drop to your Applications folder.

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

- **Logged-in email** - The email address of the current Claude account
- **Session usage** - Current session percentage and reset time
- **Weekly usage** - Current week's percentage
- **Switch Account** - Run `claude auth login` to switch to a different account

Access Settings (⌘,) to configure:
- Display mode (Text, Pie Charts, or Bar Charts)
- Refresh interval (1-30 minutes)

## How It Works

Clive periodically runs `claude /usage` to fetch your current usage statistics and displays them in the menu bar. The app parses the output to extract session and weekly usage percentages. It also runs `claude auth status` to display the currently logged-in account email.
No hacking of session tokens etc required :).

## License

MIT License - see [LICENSE](LICENSE) for details.
