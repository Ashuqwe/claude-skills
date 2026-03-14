# /feature-story — PM CV & Feature Documentation Skill

A Claude Code skill that transforms raw product feature or experiment descriptions into polished, ATS-optimized CV content and structured PM documentation.

---

## What It Does

Given a raw feature description, data points, or experiment notes, this skill produces:

| Output | Purpose |
|---|---|
| **Feature Brief** | Structured PM doc — problem, what was built, stakeholders, metrics. Useful for documentation, onboarding, and context recall. |
| **CV Story** | Context, What I Did, Impact, and 2–3 CV option angles (Revenue, Platform, Growth, Experimentation). |
| **CV Pointers** | 4–6 ready-to-paste CV bullets with ATS keywords embedded, formatted as `Action Verb → description → **bolded metric**`. Each bullet includes a tonality tag and recommendation. |
| **Interview Prep** | Key learning + 2–3 behavioral questions this story answers. |
| **Learnings** | What worked, what to do differently, and the broader product insight unlocked. |

---

## Installation

**macOS / Linux**
```bash
./install.sh feature-story
```

**Windows (PowerShell)**
```powershell
.\install.ps1 feature-story
```

**Manual (any platform)**

Copy all `.md` files except `README.md` into your Claude commands directory:

| Platform | Path |
|---|---|
| macOS / Linux | `~/.claude/commands/` |
| Windows | `%USERPROFILE%\.claude\commands\` |

Restart Claude Code after installing.

---

## How to Use

Type `/feature-story` in any Claude Code session.

The skill runs through the following steps before generating output:

| Step | What Happens |
|---|---|
| **Step 0** | Checks for a previous session. If found, asks: Continue / New feature / Start fresh. Also silently loads past feedback to calibrate output. |
| **Step 1** | Asks for: current role, target role, resume theme, raw project context, and optional JD. |
| **Step 2** | Asks up to 3 targeted clarifying questions if key data is missing (metrics, ownership, before/after). Say *"that's all I have"* to skip. |
| **Step 3** | Presents a Context Summary for you to confirm or edit, plus asks: Include Feature Brief? Yes / No. |
| **Step 4** | Generates full output across all sections. |

---

## Inputs

| Input | Required | What to Provide |
|---|---|---|
| Current Role | Yes | e.g., "Senior PM at a travel OTA" |
| Target Role | Yes | e.g., "GPM at a fintech scale-up" |
| Resume Theme | Yes | e.g., "Growth & Monetization PM" |
| Raw Project Context | Yes | Notes, data, experiment results, screenshots — anything |
| Job Description (JD) | Optional | Paste for role-specific ATS targeting. Skipping uses the built-in keyword bank. |

---

## CV Pointer Format

Bullets follow this exact structure, matching real PM CV best practices:

```
[Action Verb] [description + embedded ATS keyword], **[bolded impact metric]**
```

Example:
> Scaled checkout conversion by **implementing a dynamic fare-upgrade modal**, reducing funnel drop-off by 14pp and **capturing ₹2.4Cr/month in incremental margin**

Each bullet is tagged with:
- **Tonality** — Strategic / Execution / Data-driven / Cross-functional
- **Best for** — Role and company type this bullet fits
- **Why use this** — What narrative it signals to the recruiter

---

## ATS Keywords

- If a JD is pasted: keywords are extracted from the JD and used in the output. New keywords are silently added to `pm-story-keywords.md`.
- If no JD: falls back to the built-in bank in `pm-story-keywords.md`, organized across 8 PM categories.

---

## Persistent Storage

| File | Location | Purpose |
|---|---|---|
| Feature stories | `~/Documents/feature-stories.md` | All outputs appended here. Edit directly anytime. |
| Session memory | `~/.claude/commands/feature-story-session.md` | Last session context for continuity across invocations. |
| Feedback log | `~/.claude/commands/feature-story-feedback.md` | Ratings and notes used to calibrate future outputs. |
| ATS keyword bank | `~/.claude/commands/pm-story-keywords.md` | Auto-updated as new keywords are encountered. |

---

## Supporting Files

| File | Role |
|---|---|
| `feature-story.md` | The skill itself — invoked as `/feature-story` |
| `feature-story-guide.md` | Quick reference guide — all commands and options in one place |
| `pm-story-keywords.md` | ATS keyword bank — read and updated by the skill at runtime |

---

## Tips

- The more specific your data (%, ₹, user counts), the stronger the CV pointers.
- Missing metrics get `[insert metric]` placeholders — fill them before using on your CV.
- Re-run on the same feature with a different resume theme or target role to get a different angle.
- At Step 3, edit the context summary aggressively — it directly determines output quality.
- After each run, rate the output when prompted — the skill learns from your feedback over time.
