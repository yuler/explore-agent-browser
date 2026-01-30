<p align="center">
  <a href="./README.md">English</a> | <a>中文</a>
</p>

# explore-agent-browser

在 AI 中探索 [agent-browser](https://github.com/vercel-labs/agent-browser)

## 环境准备

```bash
# 安装 agent-browser
pnpm install
# 安装 skill
npx skills add vercel-labs/agent-browser
# 复制 .env.example 为 .env 并按需修改配置
cp .env.example .env
```

## 工作原理

- **`npm run launch`** 会在当前目录下以持久化配置启动 Chrome，因此 cookies 和存储会被保留。
- 在需要登录的网站上完成登录后，会话会在多次运行之间保持。
- 在 Agent 提示词前加上类似说明：

  ```text
  # 启动
  - 运行 `./scripts/launch.sh`
  - 使用 .env 中 `PORT` 对应的 agent-browser 连接

  # 你的操作
  ...

  # 关闭
  - 运行 agent-browser close
  ```

## 示例提示词

在 Agent 工具中可以使用：

```text
# 启动
- 运行 `./scripts/launch.sh`
- 使用 .env 中 `PORT` 对应的 agent-browser 连接

# 你的操作
- 使用 agent-browser 访问 https://github.com/yuler/explore-agent-browser，截取整页截图，并保存到 `outputs/` 目录。

# 关闭
- 运行 agent-browser close
```

## Skills

- `npx skills add .` 添加当前技能：[demo-gmail-unread](./skills/demo-gmail-unread/)
- `npm run launch` 并先登录你的 Google Gmail 账号
- `/demo-emai-unread` 运行该技能
