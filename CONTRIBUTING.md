# 贡献指南 / Contributing

欢迎为 PromptShield 提改进。本仓是运行时安全方法论编排仓，改动请保持「按 slug 引用、不内嵌子实现」的边界。

## 提交流程

1. fork 本仓或在分支上改动；
2. 保持 `SKILL.md` frontmatter 字段兼容；
3. 双语（EN / ZH）同步更新；
4. 改动路由脚本后运行 `python3 scripts/promptshield_flow.py --list`，确认 rc=0；
5. 提交 Pull Request，说明改了哪个阶段 / slug 的路由或文档。

## 不要做的事

- 不要把任何子技能的内部实现复制进本仓。
- 不要改 `LICENSE` / `LICENSE-CONTENT` / frontmatter 中的权属字段。
- 不要提交密钥、令牌或真实业务数据。

安全问题请走 [SECURITY.md](SECURITY.md) 的私下报告渠道，不要在公开 issue 中披露。

联系：zhaoxinghua09@gmail.com ｜ ORCID `0009-0001-0512-1237`
