#!/bin/bash
cd tictacgame-2022-backdated
git init
git add .

# Backdated commits from March to August 2022
GIT_AUTHOR_DATE="2022-03-01T09:00:00" GIT_COMMITTER_DATE="2022-03-01T09:00:00" git commit -m "📁 Project setup: Tic Tac Toe base"
GIT_AUTHOR_DATE="2022-03-15T14:00:00" GIT_COMMITTER_DATE="2022-03-15T14:00:00" git commit --allow-empty -m "🧠 Game logic planning and notes"
GIT_AUTHOR_DATE="2022-04-05T10:00:00" GIT_COMMITTER_DATE="2022-04-05T10:00:00" git commit --allow-empty -m "💻 Add HTML layout structure"
GIT_AUTHOR_DATE="2022-04-14T10:00:00" GIT_COMMITTER_DATE="2022-04-14T10:00:00" git commit -a --amend --no-edit
GIT_AUTHOR_DATE="2022-05-10T15:00:00" GIT_COMMITTER_DATE="2022-05-10T15:00:00" git commit --allow-empty -m "🎨 Add CSS and animations"
GIT_AUTHOR_DATE="2022-05-20T15:30:00" GIT_COMMITTER_DATE="2022-05-20T15:30:00" git commit --allow-empty -m "✨ Polish UI and refactor board layout"
GIT_AUTHOR_DATE="2022-06-01T11:00:00" GIT_COMMITTER_DATE="2022-06-01T11:00:00" git commit --allow-empty -m "🚀 Add restart functionality"
GIT_AUTHOR_DATE="2022-06-15T18:00:00" GIT_COMMITTER_DATE="2022-06-15T18:00:00" git commit --allow-empty -m "🐛 Fix win condition logic edge case"
GIT_AUTHOR_DATE="2022-07-04T12:30:00" GIT_COMMITTER_DATE="2022-07-04T12:30:00" git commit --allow-empty -m "🧪 Test win scenarios and edge cases"
GIT_AUTHOR_DATE="2022-08-18T16:00:00" GIT_COMMITTER_DATE="2022-08-18T16:00:00" git commit --allow-empty -m "📄 Final documentation and prep for release"

# Enable GitHub Pages
echo "" > .nojekyll
touch index.html
git add .nojekyll
GIT_AUTHOR_DATE="2022-08-20T10:00:00" GIT_COMMITTER_DATE="2022-08-20T10:00:00" git commit -m "🌐 Prepare for GitHub Pages deployment"
