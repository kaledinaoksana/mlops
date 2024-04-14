  $ pipx install hello
  installed package hello 2.0.3, Python 3.7.3
  These apps are now globally available
      - hello
  done! ✨ 🌟 ✨

  $ pipx list
  venvs are in /home/user/.local/share/pipx/venvs
  apps are exposed on your $PATH at /home/user/.local/bin
  package hello 2.0.3, Python 3.7.3
      - hello

  # Now you can run hello from anywhere
  $ hello World
  Hello, World!

  # This will install the package in an isolated, temporary directory and invoke the app.
  $ pipx run hello Isolated world
  Hello, Isolated world!
