<p align="center">
  <a>English</a> | <a href="README.zh.md">中文</a>
</p>

# explore-agent-browser

Explore [agent-browser](https://github.com/vercel-labs/agent-browser) in AI.

## Setup

```bash
# install agent-browser
pnpm install
# install skill
npx skills add vercel-labs/agent-browser
# copy .env.example to .env and modify the values as needed
cp .env.example .env
```

## Prompt

Enter the following prompt in the Agent tool:

```text
Use agent-browser to visit https://github.com/yuler/explore-agent-browser, capture a screenshot of the entire page, and save the content to the `outputs/` directory.
```
