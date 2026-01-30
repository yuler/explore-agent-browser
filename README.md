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
- login to sites that require authorization; sessions persist across runs.
- Prefix your Agent prompt with instructions like:

  ```text
  # Launch
  - Run `./scripts/launch.sh`
  - Use agent-browser connection from .env `PORT`

  # Your operations
  ...

  # Close
  - Run agent-browser close
  ```

## Example prompt

In the Agent tool, you can use:

```text
# Launch
- Run `./scripts/launch.sh`
- Use agent-browser connection from .env `PORT`

# Your operations
- Use agent-browser to visit https://github.com/yuler/explore-agent-browser, capture a full-page screenshot, and save it to the `outputs/` directory.

# Close
- Run agent-browser close
```

## Skills

- `npx skills add .` to add the current skill: [demo-gmail-unread](./skills/demo-gmail-unread/)
- `npm run launch` and login to your Google Gmail account first
- `/demo-emai-unread` run this skill
