# ========== COLES USER DEFINED FUNCTIONS ========== 

myfunctions() {
  cat << EOF
========== List of Available Commands ==========
kden: Opens kdenlive with a scale factor of 2 
simple: Opens simplescreenrecorder with a scale factor of 2
pyenv: Creates python virtual environment
activate_venv: Activates python virtual environment
update: Makes necessary updates to machine
EOF
}

# Sets kdenlive to a scale factor of 2 when opened
kden() {
    env QT_SCALE_FACTOR=2 kdenlive
}

# Sets SimpleScreenRecorder to a factor of 2 when opened
simple() {
    env QT_SCALE_FACTOR=2 /usr/bin/simplescreenrecorder
}
# Creates a python virtual environment
pyenv() {
  python3 -m venv venv
}

# Activates python virtual environment
activate_venv() {
  source venv/bin/activate
}

update() {
  sudo apt update && sudo apt upgrade -y
  sudo apt autoremove -y && sudo apt clean
  echo "System update complete!!"
}
