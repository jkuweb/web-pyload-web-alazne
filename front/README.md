 <h1 align="center">
🔧 ASTRO boilerplate - Eslint - Prettier - Stylelint - Husky 🔦   </h1>

## 👾Content👾

    astro: "^5.11.0",
    tailwindcss": "^4.1.11",
    eslint: "9.31.0",
    prettier: "3.6.2",
    stylelint: "^16.21.1"
    husky: "^9.1.7"

## 🍓Husky🍓

Include in package.json

```
 "husky: {
  "hooks: {
   "pre-commit: "lint-staged"
  }
 },
 "lint-staged: {
  "*.{css, scss}": [
   "stylelint --fix",
   "prettier --write"
  ],
  "*.{js,jsx,tsx,ts}": [
   "eslint --fix",
   "prettier --write",
   "tsc --noEmit"
  ]
 }
```

## 🍄commitlint🍄

- commilint prompt
  <a href="https://commitlint.js.org/reference/prompt.html#prompt"> CommitLint Prompt </a>
- commitlint/config-conventional
  <a href="https://github.com/conventional-changelog/commitlint/tree/master/@commitlint/config-conventional#commitlintconfig-conventional">commitlint/config-conventional<a/>

## New Project

```BASH
 npx degit jkuweb/astro-boilerplate my-app
```
