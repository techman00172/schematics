# zorgstudio — for vibe coders

*Zorg Studio — for vibe coders, by voice coders.*
*Want to increase your IQ by 50 points? Then work with DeepSeek V4 Flash every day.*

zorgstudio opens a **tmux** (pronounced TEE-MUX — spelled phonetically for
speech synthesizers) workspace in any project directory with an adaptive
pane layout:

## Layout

When the optional companion **zorgspeech** is found on your PATH, the layout
auto-expands to **4 panes**:

```
+-------------------+-------------------+
|                   |                   |
|   Pane 0          |   Pane 1          |
|   opencode        |   work            |
|   (AI coding)     |   (files & nav)   |
|                   |                   |
|                   +-------------------+
|                   |   Pane 2          |
|                   |   command         |
|                   |   (shell input)   |
|                   +-------------------+
|                   |   Pane 3          |
|                   |   zorgspeech      |
|                   |   (voice input)   |
+-------------------+-------------------+
```

Without zorgspeech the layout falls back to **3 panes** (opencode | work / command
at 4 lines).

## Features

- **opencode** — AI coding assistant with a 4-AI-model stack:
  - Claude Sonnet 4.6 — "god tier," impossible coding tasks (~$15/hr)
  - DeepSeek-v4-pro — analysis & architecture (~$1.50/hr)
  - DeepSeek-v4-flash — implementation work (fraction of a penny)
  - Qwen3.6-35B-A3B-Q8_0 — local Ollama, small jobs (free)
  - Model switching via Tab (Plan/Build agents)
  - `/sessions` — full chat history in SQLite, directory-scoped
- **work** — Midnight Commander file manager (the work panel)
- **command** — shell prompt in the project root
- **zorgspeech** (optional) — voice-to-AI TUI, single `i`-key toggle,
  whisper.cpp transcription pasted directly into opencode's input line
- **Fossil DVCS distribution** — everything (code, docs, pics, tickets,
  wiki pages) in one `.fossil` file; contributions via `fossil bundle`

## Why "Zorg"?

Named in honor of Gary Oldman, who played Jean-Baptiste Emmanuel Zorg in
*The Fifth Element*. Zorg built incredible hi-tech gadgets — then choked on
a cherry, surrounded by machines that couldn't understand he was dying. It took
a person to save him. The message: build powerful tools, but never forget the
human in the loop.

### Why voice?

The project was born from repetitive strain injury (RSI) and a condition called
trigger finger — the right index finger couldn't curl in, and feeling was
diminished. Typing became painful and slow. Voice interaction wasn't a luxury;
it was the difference between coding and not coding.

If this setup helps other people with RSI, arthritis, or any condition that
makes typing difficult, that's a win.

*Zorg Studio — for vibe coders, by voice coders.*

## Prerequisites

- [opencode] — AI coding assistant
- **tmux** — terminal multiplexer (say TEE-MUX)
- **mc** — Midnight Commander
- **zorgspeech** (optional) — voice-to-AI companion

[opencode]: https://opencode.ai

## AI-powered install (recommended)

The fastest way to get Zorg Studio + Zorg Speech is to hand this URL to
your AI (opencode):

    https://github.com/techman00172/schematics/raw/main/ZorgStudio-Agent.md

The AI reads the instructions, checks dependencies, installs everything,
and tests as it goes.  You don't have to read anything.

> *"vibe code without lifting a finger — installed by a genius."*

## Manual install

    cd /tmp
    wget https://github.com/techman00172/schematics/raw/main/zorgstudio.fossil
    mkdir zorgstudio && cd zorgstudio
    fossil open ../zorgstudio.fossil
    ./setup.sh

If `~/.local/bin` is already in your PATH you can run `zorgstudio` from
anywhere.  If not, the installer will tell you what to add to your `~/.bashrc`.

## The Two Fossil Repositories

Zorg Studio is distributed as **two** Fossil `.fossil` files — each a self-contained
repository with full version history, wiki, tickets, and code.

### ZorgStudio.fossil

The workspace launcher. Contains:

- `zorgstudio` — the main entry script that builds the tmux layout
- `mc-goto` — Midnight Commander panel controller
- `setup.sh` — dependency checker and installer
- `gen-sidebar.sh` — Fossil wiki sidebar generator
- `scripts/` — helper utilities
- `doc/` — documentation

After cloning, run `./setup.sh` to symlink `zorgstudio` into `~/.local/bin/`.

### ZorgSpeech.fossil

The voice-to-AI companion. Contains:

- `zorgspeech` — the TUI voice interface (single `i`/`d` key control)
- `zs-interpret` — AI interpreter that restructures rambling speech into clear commands
- `doc/` — installation and usage documentation

After cloning, run its `setup.sh` to symlink `zorgspeech` and `zs-interpret`
into `~/.local/bin/`.

### How They Work Together

```
Zorg Speech (zorgspeech)
    │
    ├─ [i] voice → whisper → interpreter → paste to opencode
    ├─ [d] voice → whisper → paste to opencode (direct)
    └─ cancel (any key) → clear input
    │
    ▼
Zorg Studio (zorgstudio)
    │
    ├─ Pane 0: opencode (AI coding)
    ├─ Pane 1: mc (file manager)
    ├─ Pane 2: shell
    └─ Pane 3: zorgspeech (voice input)
```

Zorg Studio creates the workspace. Zorg Speech fills the voice pane.
They are separate repos so you can use Zorg Studio without voice,
or use Zorg Speech with any other terminal workflow.

## Usage

    cd /some/project
    zorgstudio

To target a different directory without cd'ing first:

    zorgstudio /path/to/project

If you are already inside a tmux session the current window is reused instead
of creating a new session.

## Contributing

This is a Fossil DVCS project. Clone the `.fossil` file, make your changes,
commit locally, and email Terry a `fossil bundle`:

    fossil bundle export trunk my-changes.bundle

He'll integrate it with one command: `fossil bundle apply`.

## License

MIT — see COPYING.
