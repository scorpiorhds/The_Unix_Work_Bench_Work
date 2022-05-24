all: README.md
README.md: Guessinggame.sh
  echo "# The **name of my project** is *Guessinggame*">README.md
  echo "# The **number of lines** in my code are: ">>README.md
  cat guessinggame.sh|wc -l|sed 's/[[:space:]]//g'>>README.md
  echo "# The date at whitch the command 'make' was run is: ">>README.md
  date>>README.md
  clean:
    rm README.md
