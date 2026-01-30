<p align="center">
  <a href="./README.md">English</a> | <a>中文</a>
</p>

# explore-agent-browser

来探索 AI 中使用 [agent-browser](https://github.com/vercel-labs/agent-browser)

## 环境准备

```bash
# 安装 agent-browser
pnpm install
# 安装 skill
npx skills add vercel-labs/agent-browser
# 复制 .env.example 为 .env 并按需修改配置
cp .env.example .env
```

## 提示词

在 Agent 工具中输入以下提示词：

```text
使用 agent-browser 访问 https://github.com/yuler/explore-agent-browser，截取整页截图，并将内容保存到 `outputs/` 目录。
```
