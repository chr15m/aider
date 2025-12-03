aider-cm - an opinionated fork of [aider](https://aider.chat), an AI pair-programming tool for the command line.

Download [aider-cm as a single-file executable](https://github.com/chr15m/aider/releases/) for easy installation.

Learn about aider itself in the [original README.md](https://github.com/Aider-AI/aider/) and at <https://aider.chat>.

# Features

These are the feature branches merged into this fork:

- `build-standalone` - builds the `aider-cm` single-file executable artifact.
- [`issue-3366-globbing`](https://github.com/Aider-AI/aider/pull/3395) - context file globbing in /add /edit and /drop.
- [`shell-calls-in-ask-mode`](https://github.com/Aider-AI/aider/pull/4681) - allows the LLM to suggest runnable shell commands in /ask mode.
- [`no-auto-commits-staging`](https://github.com/Aider-AI/aider/pull/4682) - stops aider from staging files with `--no-auto-commits`.
- [`save-response-command`](https://github.com/Aider-AI/aider/pull/4683) - gives you `/save-response FILE.md` to save the last response.

# Opinionated fork opinions

- Human knows best.
- Human should make git commits.
- Human in the loop.
- Installation should be simple.
