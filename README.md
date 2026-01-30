<p align="center">
  <a>English</a> | <a href="README.zh.md">中文</a>
</p>

# explore-agent-browser

Explore [agent-browser](https://github.com/vercel-labs/agent-browser) with AI

## Setup

```bash
# Install agent-browser
pnpm install
# Install the skill
npx skills add vercel-labs/agent-browser
# Copy .env.example to .env and set values as needed
cp .env.example .env
```

## How it works

- **`npm run launch`** starts Chrome with a persistent profile in the current folder, so cookies and storage are preserved.
- Log in to sites that require authorization; sessions persist across runs.
- Prefix your Agent prompt with instructions like:

  ```text
  - Run `./scripts/launch.sh`
  - Use agent-browser connection from .env `PORT`

  # Your operations
  ...
  ```

## Example prompt

In the Agent tool, you can use:

```text
- Run `./scripts/launch.sh`
- Use agent-browser connection from .env `PORT`
Use agent-browser to visit https://github.com/yuler/explore-agent-browser, capture a full-page screenshot, and save it to the `outputs/` directory.
```

## TODO:

- Add `skills` folder