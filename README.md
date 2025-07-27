# My Bash Configuration

My personal bash functions and configurations for Debian/Linux systems.

## 📁 Structure

- `myfunctions.sh` - Custom bash functions

## 🚀 Installation

1. Clone the repository to your home directory:
```bash
git clone https://github.com/yourusername/mybash.git ~/mybash
```

2. Add the following code to your ~/.bashrc file to reference the functions:
```bash
if [ -f /path/to/cloned/repo/myfunctions.sh ]; then
  . /path/to/cloned/repo/myfunctions.sh
fi
```

3. Reload your bash configuration:
```bash
source ~/.bashrc
```
