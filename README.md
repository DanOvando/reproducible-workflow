
<!-- README.md is generated from README.Rmd. Please edit that file -->

# reproducible-workflow

<!-- badges: start -->

<!-- badges: end -->

reproducible-workflow is to minimal repository to demonstrate some core
principles of reproducible workflows.

Presentation available in presentations/reproducibility-101.Rmd

Check out an example reproducible analysis by working through
make-reprex.R

All materials needed to reproduce our results and manuscript are
contained in this repository. In order to reproduce

1.  Fork the repository and clone to your machine, or just download the
    repo.

2.  Open R and set your working directory of the cloned repository (or
    just use RStudio projects)

3.  This project is set up with
    [`renv`](https://rstudio.github.io/renv/articles/renv.html) to
    manage package dependencies. Inside R (and with your working
    directory set correctly) run `renv::restore()`. Follow all prompts.
    This will install the correct versions of all the packages needed to
    replicate our results. Packages are installed in a stand-alone
    project library for this paper, and will not affect your installed R
    packages anywhere else.

### Troubleshooting

I intentionally included some code that requires particular computer
settings in the make-reprex.R example included in this repo. This is
intended to demonstrate both the ability of `renv` to keep complex
dependencies, like particular branches of in development packages, in
check, but also the limittions: it won’t make sure you have Rtools
installed correctly.

Here are some tips to set up your computer to make-reprex.R

Make sure you try the run with a fresh R session (go to
“Session\>Restart R” to make sure)

If you run into an error, first off try updating your R packages. From
there….

If your version of R is lower than 3.5, you might want to consider
updating R itself. Updating from 3.51 to 3.52 shouldn’t be any hassle.
BIG WARNING THOUGH, updating from say R 3.1 to 3.5 is a major update,
and you’ll lose all your installed packages in the process. I recommend
following the instructions
[here](https://www.datascienceriot.com/r/upgrade-R-packages/) to deal
with that, but even with that fix it can take a while, so I don’t
recommend doing a major R update if you’re on a deadline. There are also
packages to help you with this process, specifically
[`installR`](https://github.com/talgalili/installr/issues) for Windows
and [`updateR`](https://github.com/AndreaCirilloAC/updateR) for Mac.

From there…

  - On Windows, make sure you have the appropriate version of Rtools
    installed ([here](https://cran.r-project.org/bin/windows/Rtools/)),
    most likely Rtools35 if you have R version 3.3 or higher
      - Make sure that you select the box that says something about
        adding Rtools to the PATH variable
  - On macOS, there might be some issues with the your compiler. If you
    get an error that says something like `clang: error: unsupported
    option '-fopenmp'`, follow the instructions
    [here](https://thecoatlessprofessor.com/programming/r-compiler-tools-for-rcpp-on-macos/)

Once you’ve tried those, restart your computer and try
