fix=0


# Stuff to do at first run(submodule, npm install).
if [[ -d "static" && -n "$(find static -prune -empty 2>/dev/null)" ]] || [[ ! -d "static" ]]; then
  npm install
  git submodule update --init --recursive
fi


npm start || [[ $fix = 1 ]] && npm install && npm update && git submodule update --init --recursive
