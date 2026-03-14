# Claude Skills

A personal library of custom slash commands (skills) for [Claude Code](https://claude.ai/claude-code).

Each skill is a `.md` file that gets loaded into Claude Code as a `/command`, enabling repeatable, structured workflows directly in your terminal.

---

## Prerequisites

- [Claude Code](https://claude.ai/claude-code) installed and running
- macOS, Linux, or Windows (PowerShell)

---

## Installation

### macOS / Linux

```bash
git clone https://github.com/Ashuqwe/claude-skills.git
cd claude-skills
chmod +x install.sh

# Install all skills
./install.sh all

# Or install a specific skill
./install.sh feature-story
```

### Windows (PowerShell)

```powershell
git clone https://github.com/Ashuqwe/claude-skills.git
cd claude-skills

# Install all skills
.\install.ps1 all

# Or install a specific skill
.\install.ps1 feature-story
```

> If you get a script execution error, run this first:
> `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`

### Manual install (any platform)

Copy all `.md` files (except `README.md`) from the skill folder into your Claude commands directory:

| Platform | Claude commands directory |
|---|---|
| macOS / Linux | `~/.claude/commands/` |
| Windows | `%USERPROFILE%\.claude\commands\` |

Restart Claude Code after installing. Skills are available as `/skill-name`.

---

## Available Skills

### `/feature-story`
**PM CV & Feature Documentation**

Transforms raw product feature or experiment descriptions into:
- ATS-optimized CV bullet points with tonality guidance
- A structured PM Feature Brief for documentation and context recall
- Interview prep angles and product learnings

Built for Product Managers who want to turn messy notes and data into polished, recruiter-ready stories.

[Full documentation](skills/feature-story/README.md)

---

## Repo Structure

```
claude-skills/
├── README.md               # This file
├── install.sh              # Installer for macOS / Linux
├── install.ps1             # Installer for Windows (PowerShell)
└── skills/
    └── feature-story/
        ├── README.md           # Skill documentation
        ├── feature-story.md    # Main skill (the /command)
        ├── feature-story-guide.md  # Quick reference guide
        └── pm-story-keywords.md    # ATS keyword bank (auto-updated)
```

---

## Adding a New Skill

1. Create a folder under `skills/your-skill-name/`
2. Add your skill as `your-skill-name.md` (this becomes the `/command`)
3. Add a `README.md` documenting how the skill works
4. Update both `install.sh` and `install.ps1` if your skill has supporting files
5. Add an entry to the Available Skills section above

---

## Notes

- `feature-story-session.md` and `feature-story-feedback.md` are generated at runtime and are intentionally excluded from this repo (see `.gitignore`)
- The `pm-story-keywords.md` ATS bank grows over time as you use the skill — pull the latest version to get the most up-to-date bank, or push your updated version back
