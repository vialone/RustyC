note: i made preprocessor to process your code 3 times. so you can create nested macros, but it has depth limit. Keep it in mind.

deps:
- rustc
- gcc

Installation:

```bash
make install
```

Uninstallation:

```bash
make uninstall
```

Usage:

```bash
rustyc <input file>
```

Example:

```bash
rustyc main.rs -o main
```

Check:

```bash
make check
```
