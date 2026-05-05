# rz_template_set_1

![Platform](https://img.shields.io/badge/platforms-Flutter-blue)
![License](https://img.shields.io/badge/license-MIT-green)

A Flutter plugin for centralized theme configuration, providing structured and reusable access to colors, text styles, and size constants.  
This package helps maintain a consistent design system across Flutter applications.

---

## Features

- Centralized theme management
- Reusable color palette
- Structured access to color, text, and size
- Pure Dart implementation (no async, no native code)
- Works on Android, iOS, Web, and Desktop

---

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
get: ^4.7.3
iconsax: ^0.0.8
responsive_builder_kit: ^0.0.7
```

```yaml
dependencies:
  rz_template_set_1:
    git:
      url: https://github.com/rzrasel/flutter-plugins-rz-template-set-1.git
      ref: vref-1.0.1
```

```bash
git tag v1.0.0
git push origin v1.0.0
```

---

## 🧰 Git Commands

```bash
git init
git remote add origin https://github.com/rzrasel/flutter-plugins-rz-template-set-1.git
git remote -v
git fetch && git checkout master
git add .
git commit -m "Add Readme & Git Commit File"
git pull
git push --all
git status
git status
```

---

## License

MIT License  
See the LICENSE file for details.

Recommended fix
```bash
git fetch origin
git pull --rebase origin master
git push origin master
```

⚠️ This permanently discards your uncommitted changes:

```bash
git restore .
git pull --rebase origin master
git push origin master
```

Since you're working on the README/workflow and likely want to keep your changes, use:

```bash
git stash
git pull --rebase origin master
git stash pop
git push origin master
```

## Fix - recommended

Delete all Pub cache - Bash

```bash
rm -rf ~/.pub-cache

rm -rf "$LOCALAPPDATA/Pub/Cache"
```

If you only want to delete Git plugin caches

```bash
rm -rf "$LOCALAPPDATA/Pub/Cache/git"
```

Close your Flutter IDE and run:

```bash

flutter pub cache repair
flutter clean
flutter pub get

```

## 🧩 Git Delete All Tag(s) From Remote:

```bash
git ls-remote --tags origin
git tag -l | xargs -n 1 git tag -d
git ls-remote --tags origin \
  | awk -F/ '/refs\/tags\// && !/\^\{\}$/ {print $3}' \
  | while read tag; do
      git push origin --delete "$tag"
    done
```

If you only want to delete vref-* tags

```bash
git tag -l "vref-*" | while read tag; do
    git tag -d "$tag"
    git push origin --delete "$tag"
done
```

## 🧩 Git Rebase Squash (Interactive)

```bash
git rebase -i HEAD~2
i
[delete word: pick [make it] squash/s]
esc:wq↵

i
[change commit comment by #]
esc:wq↵

------------------------------------

git rebase -i 4daac6b7
i
[delete word: pick [make it] squash/s]
esc:wq↵

i
[change commit comment by #]
esc:wq↵

git push --force
//git push -f --set-upstream origin master

------------------------------------

git rebase -i --root
i
[delete word: pick [make it] squash/s]
esc:wq↵

i
[change commit comment by #]
esc:wq↵

git push --force

//git push -f --set-upstream origin master
```

---

## ⏰ PHP Date Example

```php
echo date("D", (time() + 6 * 60 * 60)) . "day " . date("F j, Y, G:i:s", (time() + 6 * 60 * 60));
```

---

## 📚 Learn More

👉 https://youtu.be/V5KrD7CmO4o

---

## ✅ Done!
