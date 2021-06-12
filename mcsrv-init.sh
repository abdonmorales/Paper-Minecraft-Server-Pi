echo "MC Server (Update)"
echo "Shell Script v1.3.1 (Paper)"

OS="`uname`"

MC_VERSION="1.16.5-775"

get_latest_server() {
  SERVER_JAR_URL="https://github.com/abdonmorales/Minecraft-Server/raw/jars/paper-1.16.5-775.jar"

determine_OS() {
  if [[ OS="Darwin" ]]; then
   java -Xmx1G -Xms1G -jar paper-1.16.5-775.jar nogui
   echo "MacOS 11.0 (Big Sur)"
   elif [[ OS="Linux" ]]; then
      exec java -Xmx1G -Xms1G -jar paper-1.16.5-775.jar nogui
      echo "Linux"
  fi
}

printf "%s" "Checking server JAR... "
  if [[ ! -e "paper-$MC_VERSION.jar" ]]; then
    printf "%s\n" "No server JAR found."
    get_latest_server
  fi


echo "Finished downloading PaperMC Server JAR 1.16.5-775 for MC Server (Paper) v1.3"

echo "JAR now up to date!"

echo "Now running JAR"

determine_OS
