set -e
echo "installing cf support package"
sudo curl -fsSL https://us-apt.pkg.dev/doc/repo-signing-key.gpg \
    -o /etc/apt/trusted.gpg.d/artifact-registry.asc
sudo chmod a+r /etc/apt/trusted.gpg.d/artifact-registry.asc
echo "deb [arch=arm64] https://us-apt.pkg.dev/projects/android-cuttlefish-artifacts android-cuttlefish main" \
    | sudo tee -a /etc/apt/sources.list.d/artifact-registry.list
sudo apt update
sudo apt install -y cuttlefish-base cuttlefish-user cuttlefish-orchestration adb fastboot
echo "installed; please execute "cvd fetch" and follow the instructions"
echo "after execute ./start.sh"