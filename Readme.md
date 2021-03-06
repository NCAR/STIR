# TIER
Repository for the Topographically InformEd Regression (TIER)

The TIER tool was motivated by the desire to explore methodological choices in 'knowledge-based' spatial mapping algorithms.  These algorithms incorporate knowledge of atmospheric processes and their interaction with the landscape with geophysical attributes to inform statistical regression models that map meteorology variables to a grid.  TIER follows the knowledge-based concepts put forth in Daly et al. (1994, 2000, 2002, 2007, 2008). The general algorithms of these papers have been coded from the published papers. Differences are noted when we are sure a difference exists.

The user is encouraged to modify model parameters using the input parameter files for the DEM preprocessing and the statistical mapping algorithm.  The modular design also allows for additional functionality to be added, hopefully with minimal effort.  It is hoped this code base allows for a fuller understanding of the impacts sometimes seemingly small methodological choices have on our final gridded estimates.

It is **_highly_** recommended to read the TIER description paper in GMD (Newman and Clark 2019).  Also the example tarball at (https://ral.ucar.edu/solutions/products/the-topographically-informed-regression-tier-model) contains an example input grid, example station data, configuration and parameter files used in the example cases.  These should also then be used as example formats for your own data.

## Installing the code:

This code is written in Matlab and requires Matlab along with the mapping and image processing toolboxes.  The user needs to include the TIER repository directory and all subdirectories in their Matlab path

        addpath(genpath('/path/to/TIER/'))

It has also been tested for GNU Octave compatibility on a Mac running HighSierra OS10.13.6 using an Octave disk image of version 4.4.1 (https://octave-app.org/Download.html).  Octave is a free alternative to Matlab with generally good Matlab compatibility.  TIER requires the netcdf, image, and mapping Octave packages to be installed.  See the Octave install readme for more details.

Extensive compatibility testing is not supported by the author(s) currently.

## Development:

TIER uses Git as its version control tool. Further description of git (https://git-scm.com/book/en/v2) and TIER can be found in [TIERandGit](https://github.com/NCAR/TIER/blob/develop/docs/TIERandGit.md) and [TIERGitWorkflow](https://github.com/NCAR/TIER/blob/develop/docs/TIERGitWorkflow.md).

## Examples:

An example case has been developed with example parameter perturbations and output and can be found at (ral.ucar.edu/projects/TIER) including a tutorial guide in docs/exampleReadme.md.

## References:

* Daly, C., R. P. Neilson, and D. L. Phillips, 1994: A Statistical-Topographic Model for Mapping Climatological Precipitation over Mountainous Terrain, J. Appl. Meteor., 33, 140-158.
* Daly, C., G. Taylor, W. Gibson, T. Parzybok, G. Johnson, and P. Pasteris, P, 2000: High-quality spatial climate data sets for the United States and beyond. Transactions of the ASAE, 43, 1957.3.
* Daly, C., W. P. Gibson, G. H. Taylor, G. L. Johnson, and P. Pasteris, 2002: A knowledge-based approach to the statistical mapping of climate. Clim. Res. 22: 99–113, doi: 10.3354/cr022099.
* Daly, C., J. W. Smith, J. I. Smith, and R. B. McKane, 2007: High-resolution spatial modeling of daily weather elements for a catchment in the Oregon Cascade Mountains, United States. J. Appl. Meteorol. Climatol., 46, 1565-1586.
* Daly, C., M. Halbleib, J. I. Smith, W. P. Gibson, M. K. Doggett, G. H. Taylor, J. Curtis, and P. A. Pasteris, 2008: Physiographically-sensitive mapping of temperature and precipitation across the conterminous United States. Int. J. Climatol. 28: 2031–2064, doi: 10.1002/joc.1688.
* Newman, A. J., and M. P. Clark, 2019: TIER Version 1.0: An open-source Topographically InformEd Regression (TIER) model to estimate spatial meteorological fields. Submitted to Geoscientific Model Development

