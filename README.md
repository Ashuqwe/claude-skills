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

| Skill | Description | Category |
|-------|-------------|----------|
| [`/feature-story`](skills/feature-story/README.md) | PM CV & Feature Documentation - Transforms raw product feature descriptions into ATS-optimized CV content and PM documentation. | Product Management |
| [`/academic-researcher`](skills/academic-researcher/academic-researcher.md) | Academic research assistant for literature reviews, paper analysis, and scholarly writing. | Research |
| [`/code-reviewer`](skills/code-reviewer/code-reviewer.md) | Thorough code review with focus on security, performance, and best practices. | Development |
| [`/content-creator`](skills/content-creator/content-creator.md) | Creates engaging content for blogs, social media, and marketing materials with audience focus. | Writing |
| [`/data-analyst`](skills/data-analyst/data-analyst.md) | SQL, pandas, and statistical analysis expertise for data exploration and insights. | Data |
| [`/debugger`](skills/debugger/debugger.md) | Systematic debugging and root cause analysis for identifying and fixing issues. | Development |
| [`/decision-helper`](skills/decision-helper/decision-helper.md) | Structured decision-making frameworks for evaluating options and making informed choices. | Productivity |
| [`/deep-research-awesome`](skills/deep-research-awesome/deep-research-awesome.md) | Comprehensive research assistant that synthesizes information from multiple sources with citations. | Research |
| [`/editor`](skills/editor/editor.md) | Professional editing and proofreading for clarity, grammar, style, and tone. | Writing |
| [`/email-drafter`](skills/email-drafter/email-drafter.md) | Professional email composition for business communication across various scenarios. | Productivity |
| [`/fact-checker`](skills/fact-checker/fact-checker.md) | Systematic fact verification and misinformation identification using credible sources. | Research |
| [`/fullstack-developer`](skills/fullstack-developer/fullstack-developer.md) | Modern web development expertise covering React, Node.js, databases, and deployment. | Development |
| [`/meeting-notes`](skills/meeting-notes/meeting-notes.md) | Structured meeting summaries with action items, decisions, and key takeaways. | Productivity |
| [`/project-planner`](skills/project-planner/project-planner.md) | Breaks down complex projects into actionable tasks with timelines and dependencies. | Planning |
| [`/python-expert`](skills/python-expert/python-expert.md) | Senior Python developer expertise for writing clean, efficient, and maintainable code. | Development |
| [`/sprint-planner`](skills/sprint-planner/sprint-planner.md) | Agile sprint planning with story estimation, capacity planning, and backlog refinement. | Planning |
| [`/strategy-advisor`](skills/strategy-advisor/strategy-advisor.md) | High-level strategic thinking and business decision guidance for organizations. | Strategy |
| [`/technical-writer`](skills/technical-writer/technical-writer.md) | Creates clear documentation, API references, guides, and technical content. | Writing |
| [`/ux-designer`](skills/ux-designer/ux-designer.md) | Expert UX design assistance for user research, wireframing, prototyping, and testing. | Design |
| [`/visualization-expert`](skills/visualization-expert/visualization-expert.md) | Chart selection and data visualization guidance for effective data communication. | Data |

---

## Repo Structure

```
claude-skills/
├── README.md               # This file
├── install.sh              # Installer for macOS / Linux
├── install.ps1             # Installer for Windows (PowerShell)
├── .gitignore              # Git ignore rules
├── skill-template.md       # Comprehensive skill creation guide
├── skill-template-prompt.md # Minimal prompt version for quick use
├── skill-template-example.md # Filled example for reference
└── skills/
    ├── feature-story/
    │   ├── README.md           # Skill documentation
    │   ├── feature-story.md    # Main skill (the /command)
    │   ├── feature-story-guide.md  # Quick reference guide
    │   └── pm-story-keywords.md    # ATS keyword bank (auto-updated)
    ├── academic-researcher/
    │   └── academic-researcher.md
    ├── code-reviewer/
    │   ├── code-reviewer.md
    │   ├── AGENTS.md
    │   └── rules/
    ├── content-creator/
    │   └── content-creator.md
    ├── data-analyst/
    │   └── data-analyst.md
    ├── debugger/
    │   └── debugger.md
    ├── decision-helper/
    │   └── decision-helper.md
    ├── deep-research-awesome/
    │   └── deep-research-awesome.md
    ├── editor/
    │   └── editor.md
    ├── email-drafter/
    │   └── email-drafter.md
    ├── fact-checker/
    │   └── fact-checker.md
    ├── fullstack-developer/
    │   └── fullstack-developer.md
    ├── meeting-notes/
    │   └── meeting-notes.md
    ├── project-planner/
    │   └── project-planner.md
    ├── python-expert/
    │   ├── python-expert.md
    │   └── AGENTS.md
    ├── sprint-planner/
    │   └── sprint-planner.md
    ├── strategy-advisor/
    │   └── strategy-advisor.md
    ├── technical-writer/
    │   └── technical-writer.md
    ├── ux-designer/
    │   ├── ux-designer.md
    │   ├── AGENTS.md
    │   └── rules/
    └── visualization-expert/
        └── visualization-expert.md
```

---

## Adding a New Skill

### Using Templates (Recommended)
Use the provided templates to create consistent, high-quality skills:

1. **Review templates**:
   - `skill-template.md` - Comprehensive guide with explanations
   - `skill-template-prompt.md` - Minimal version for quick use
   - `skill-template-example.md` - Filled example for reference

2. **Create skill folder**: `skills/your-skill-name/`
3. **Create skill file**: Copy template, fill placeholders, save as `your-skill-name.md`
4. **Add README.md** (optional but recommended): Document how the skill works
5. **Test installation**: `./install.sh your-skill-name` (macOS/Linux) or `.\install.ps1 your-skill-name` (Windows)
6. **Add to Available Skills**: Update the table above with your new skill

### Manual Creation
1. Create a folder under `skills/your-skill-name/`
2. Add your skill as `your-skill-name.md` (this becomes the `/command`)
3. Add a `README.md` documenting how the skill works
4. Update both `install.sh` and `install.ps1` if your skill has supporting files
5. Add an entry to the Available Skills section above

---

## Notes

- `feature-story-session.md` and `feature-story-feedback.md` are generated at runtime and are intentionally excluded from this repo (see `.gitignore`)
- The `pm-story-keywords.md` ATS bank grows over time as you use the skill — pull the latest version to get the most up-to-date bank, or push your updated version back
