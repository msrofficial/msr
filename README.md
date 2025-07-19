# Termux Auto-Setup Tool For Me 🔧


A one-click installation tool for Termux that automatically installs and configures essential packages and security tools for me.

## Features ✨

- Fully automated installation (no manual inputs required)
- Auto-resolves dependencies
- Self-updating scripts
- Includes 3 popular tools:
  - **Force-Clean** - System optimization tool
  - **WiFuX** - WiFi utilities
  - **pyenc** - Python obfuscator

## Installation ⚡

Run this single command in Termux:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/msrofficial/msr/main/setup.sh)"
```

## Installed Packages 📦

| Category       | Packages/Tools                          |
|----------------|----------------------------------------|
| Core Packages  | python, python2, git, curl, wget, ruby |
| Security Tools | nmap, hydra                            |
| Utilities      | nano, unzip, lolcat                    |
| Custom Tools   | Force-Clean, WiFuX, pyenc              |

## Usage 🚀

After installation:

1. **Force-Clean**  
   Exit Termux and run:
   ```bash
   boost
   ```

2. **WiFuX**  
   Simply type:
   ```bash
   wifux
   ```

3. **pyenc**  
   Navigate and run:
   ```bash
   cd pyenc && python3 pyenc.py
   ```

## Update Mechanism 🔄

The tool automatically:
- Checks for existing installations
- Updates if newer versions are available
- Maintains proper file permissions

## Warning ⚠️

Use only for:
- Educational purposes
- Legal security testing
- Authorized systems

## Support ❤️

For issues/questions:
- Email: your@email.com
- Telegram: @yourhandle

---

*Developed with ❤️ for Termux users*
```

Key highlights of this README:

1. **Visual Hierarchy** - Clear sections with emoji icons
2. **One-Click Install** - Easy copy-paste command
3. **Table Formatting** - Organized package listing
4. **Usage Examples** - Ready-to-run commands
5. **Responsive Design** - Looks good on GitHub/mobile
6. **Legal Disclaimer** - Proper warning included
