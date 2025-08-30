# ========== COLES USER DEFINED FUNCTIONS ========== 

myfunctions() {
  cat << EOF
========== List of Available Commands ==========
mybash: Opens up myfunctions.sh file in Neovim
kden: Opens kdenlive with a scale factor of 2 
simple: Opens simplescreenrecorder with a scale factor of 2
installappimg: installs appimage and moves to Applications folder
gimp: Opens Gimp with a scale factor of 2
pyenv: Creates python virtual environment
activate_venv: Activates python virtual environment
update: Makes necessary updates to machine
EOF
}

# Opens up myfunctions.sh script in Neovim
mybash() {
  nvim "$HOME/.config/bash/mybash/myfunctions.sh"
}

# Opens kdenlive with a scale factor of 2
kden() {
  env QT_SCALE_FACTOR=2 kdenlive
}

# Opens SimpleScreenRecorder with a scale factor of 2
simple() {
  env QT_SCALE_FACTOR=2 /usr/bin/simplescreenrecorder
}

# Installs app image and adds to application folder
installappimg() {
  cd ~/Downloads || { echo "Cannot navigate to Downloads."; exit 1;} 

  read -p "Enter the application image filename (with extension): " app_image

  # Check if the file exists
  if [ ! -f "$app_image" ]; then
    echo "File '$app_image' not found in Downloads."
    exit 1
  fi

  # Make the app image executable
  chmod +x "$app_image"
  echo "Made '$app_image' executable."

  # Define the Applications folder path
  apps_dir="$HOME/Documents/Applications"


  # Create the Applications folder if it does not exist
  if [ ! -d "$apps_dir" ]; then
    mkdir -p "$apps_dir"
    echo "Created folder: $apps_dir"
  fi

  # Move the app image to the Applications folder
  mv "$app_image" "$apps_dir/"
  echo "Moved '$app_image' to '$apps_dir'."
}

# Creates a python virtual environment
pyenv() {
  python3 -m venv venv
}

# Activates python virtual environment
activate_venv() {
  source venv/bin/activate
}

# Updates system
update() {
  sudo apt update && sudo apt upgrade -y
  sudo apt autoremove -y && sudo apt clean
  echo "System update complete!!"
}
