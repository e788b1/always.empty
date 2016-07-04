**tips**
- exclude everything except directory foo/bar
```bash
/*
!/foo
/foo/*
!/foo/bar
```

- Show ignored files in git cache by .gitignore
```bash
git ls-files -i --exclude-from=/.gitignore

```

- ignore and remove file in git only (use --cached)
```bash
echo -e \!file >> /.gitignore
git ls-files -i --exclude-from=/.gitignore | xargs git rm -r --cached
```
