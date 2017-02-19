# Allow globbing of hidden files
shopt -s dotglob

echo
echo "Making scripts available for execution"
for f in scripts/*
do
  chmod +x ${f}
  echo "    ${f}"
done

echo
echo "Copying config files to ${HOME}:"
for f in config/*
do
  cp ${f} ~/$(basename ${f})
  echo "    $(basename ${f})"
done

echo
echo "Adding scripts to PATH in ${HOME}/.bashrc"
echo "# Adding bash_config scripts" >> ${HOME}/.bashrc
echo "export PATH=\$PATH:$(pwd)/scripts/" >> ${HOME}/.bashrc

exit 0
