brew install caskroom/cask/brew-cask
brew cask install xquartz
brew install --with-x11 homebrew/science/r
brew cask install rstudio
brew install openssl
R --no-save <<EOF
mirror <- 'http://cran.us.r-project.org'
cran_packages <- c(
    'devtools',
    'glmnet', # gml for intro to statistical learning
    'caret', # machine learning tools
    'arm' # gelmen and hill book
)
for (p in cran_packages) {
    tryCatch({
        library(p)
    }, error = function(e) {
        install.packages(p, repos=mirror)
    })
}
library('devtools')
github_packages <- c(
    'hadley/tidyverse', # all of the hadleyverse packages
    'edwindj/whisker' # string templating language
)
for (p in github_packages) {
    install_github(p)
}
EOF
