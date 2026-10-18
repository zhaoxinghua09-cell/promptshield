# AGENTS.md — 给 AI Agent 的工作指引

本文件面向自动化 AI Agent（编码助手、技能加载器、文档维护机器人）。人类读者请看 [README.md](README.md)。

## 这个仓库是什么

`promptshield`（slug: ai-safety-suite）是一个 **智能体运行时安全方法论合集**，不是可运行的 SDK，也不内嵌任何子技能的内部实现。核心资产是 `SKILL.md`（遵循 Agent Skills 规范，双语英前中后）与只读路由脚本 `scripts/promptshield_flow.py`。它按 slug 把你路由到 9 个已独立发布的运行时安全子技能：红队演练、注入防护、泄漏扫描、令牌泄漏检查、工具调用守卫、循环守卫、MCP 安全扫描、技能准入门禁。

## 可用的工作命令

```bash
# 列出完整生命周期（5 阶段、9 子技能）
python3 scripts/promptshield_flow.py --list

# 查某个阶段怎么调（例：守卫阶段）
python3 scripts/promptshield_flow.py --route guard
```

前置依赖：Python 3。无第三方包、无网络调用、无业务数据写入。

## 约定（Do）

- 修改前先读 `SKILL.md` 的 frontmatter，**保持字段兼容**。
- 新增/调整子技能路由时，同步更新 `README.md` 与 `SKILL.md` 的子技能表，保持双语（EN/ZH）一致。
- 改动路由脚本后跑 `python3 scripts/promptshield_flow.py --list`，确认 rc=0。

## 禁止（Don't）

- 不要改 `SKILL.md` 的 `copyright` / `author` / 许可字段，也不要改 `LICENSE` / `LICENSE-CONTENT` 的权利主体——**权属字段只由维护者变更**。
- 不要把任何子技能内部实现复制进本仓；保密包 `agent-redteam-kit` 仅按能力名引用。
- 不要在仓内提交任何密钥、令牌或真实业务数据。
- 不要改写下载量 / 评测 sha / 下载快照时点等实测数据。

## 边界

本仓专注智能体**运行时安全方法论编排与路由**；不重写安全工具、不代执行、不托管子技能包。
