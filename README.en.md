# PromptShield · AI Safety Suite (slug: ai-safety-suite)

[![Code: MIT](https://img.shields.io/badge/Code-MIT-yellow.svg)](LICENSE)
[![Content: All Rights Reserved](https://img.shields.io/badge/Content-All%20Rights%20Reserved-red.svg)](LICENSE-CONTENT)
[![Agent Runtime Safety](https://img.shields.io/badge/agent-runtime%20safety-2ea44f.svg)](#)
[![Prompt Injection](https://img.shields.io/badge/prompt-injection-shield-blue.svg)](#)
[![Bilingual EN/ZH](https://img.shields.io/badge/docs-EN%2FZH-brightgreen.svg)](README.md)

> **One install, your agent stops leaking secrets and obeying injected instructions.**

## What is PromptShield

A **methodology collection** for agent runtime safety — one repo, one `SKILL.md`
orchestrator, multi-vendor plugin shims, and a one-page ASCII lifecycle map.
Where external collections ship *tools without governance*, PromptShield ships
**theory (LGD three laws) + skills + evidence chain + admission gates** as one
auditable unit. It references sub-skills by slug only; internals are not vendored.

## The safety lifecycle (one page)

```
  RED-TEAM ──────▶ SHIELD ──────▶ LEAK ──────▶ GUARD ──────▶ GATE
 attack first     block hostile    find what we     control what the    decide what may
                  input at         expose before    agent may call      enter the
                  runtime         shipping                              library
```

## Quick Start

```bash
git clone https://github.com/zhaoxinghua09-cell/promptshield.git
cd promptshield

# the whole lifecycle
python3 scripts/promptshield_flow.py --list

# how to run one stage (e.g. the guard stage)
python3 scripts/promptshield_flow.py --route guard
```

Per-agent: Claude Code `claude plugin install promptshield@promptshield`; Codex
drop `.codex-plugin/` next to your project; Cursor copy `.cursor-plugin/`.

## The 9 sub-skills (by slug)

| Stage | Slug |
|---|---|
| Red-team drill | `agent-redteam-kit` (confidential — capability name only), `prompt-injection-drill` |
| Injection shield | `prompt-injection-shield` |
| Leak scan | `prompt-leak-scanner`, `token-disclosure-check` |
| Runtime guard | `tool-call-guard`, `agent-loop-guard`, `mcp-security-scan` |
| Admission gate | `skill-admission-gate` |

## Scope

References sub-skills by slug; no sub-package internals are vendored. Pure
documentation + a read-only router: no network, no business-data writes, no
acting on your behalf.

## License / 许可

Mixed repo — code and prose carry different licenses:

- **Code (MIT)**: `scripts/*.py`, installers, plugin shims — see [LICENSE](LICENSE).
- **Methodology prose (all rights reserved)**: `SKILL.md`, `README.md` docs —
  short citation and linking allowed with attribution; republishing / adapting /
  ML-corpus use requires written permission — see [LICENSE-CONTENT](LICENSE-CONTENT).

Found a security issue? Report privately per [SECURITY.md](SECURITY.md).
Contributions per [CONTRIBUTING.md](CONTRIBUTING.md).

Contact: zhaoxinghua09@gmail.com ｜ ORCID `0009-0001-0512-1237`
