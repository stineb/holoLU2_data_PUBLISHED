# Data from Stocker et al. (2017) PNAS

This dataset contains all time series data for the peatland carbon balance and land use change emissions as published in Stocker et al., 2017. Provided are CSV files for time series for global totals and NetCDF files for global spatial fields covering the Holocene until present.

## DOI
dx.doi.org/10.3334/ORNLDAAC/1374

## Available from

[ORNL DAAC](http://dx.doi.org/10.3334/ORNLDAAC/1374)

and

[Climate and Environmental Physics, Uni. Bern](http://www.climate.unibe.ch/research/publications/datasets/index_eng.html.)

**DOI: http://dx.doi.org/10.3334/ORNLDAAC/1382**

## Available files:

### Global sums in CSV files

`dcpeat_lpx_stocker17pnas.csv` : Global total peatland annual net ecosystem productivity and carbon storage in peatland soils, simulated by LPX-Bern (using DYPTOP module for dynamically simulating peatland distribution and C, as described in Stocker et al., 2014, GMD)

`dcpeat_yml_stocker17pnas.csv` : Global total peatland net carbon balance, derived from 64 dated peat cores, termed 'YML' in Stocker et al., 2017. Includes summary statistics from 1000 individual Monte Carlo reconstructions.

`dcpeat_cum_yml_stocker17pnas.csv` : Global total cumulative peatland net carbon balance, derived from 64 dated peat cores, termed 'YML' in Stocker et al., 2017. Includes summary statistics from 1000 individual Monte Carlo reconstructions.

`luc_co2_emissions_stocker17pnas.csv` : Annual and cumulative CO2 emissions from land use change following different scenarios (HYDE 3.1, HYDE 3.2, KK10 and KK10D

### Global spatial fields in NetCDF files

**These are not available on github. Go to [ORNL DAAC](http://dx.doi.org/10.3334/ORNLDAAC/1374) to get them.**

`peatland_area_carbon_13kaBP_2000CE_stocker17pnas.nc` : Global spatial fields of simulated peatland area fraction and soil carbon stocks from the LPX-DYPTOP model. Given at a spatial resolution of 2.5 degrees in latitude and 3.75 degrees in longitude and a temporal resolution of 10 yr, spanning 13 ka BP to present (2000 CE).

`landuse_area_emissions_stocker17pnas.tgz` : Contains NetCDF files for global spatial fields of landuse C emissions and landuse area for different scenarios (HYDE 3.1, HYDE 3.2, KK10, and variants), covering 12 ka BP to present. Given at a spatial resolution of 2.5 degrees in latitude and 3.75 degrees in longitude.
example_plot.R : Reads the provided data files and creates figures like Fig. 1 and S8 in Stocker
et al., 2017.

## Uncertainty estimates 
Available for the peatland carbon balance (YML dataset) and is assessed by a
set of 1000 Monte Carlo simulations that account for uncertainty in peat core measurements and
uncertainty in parameters used to derive the global peatland carbon balance for multiple core
measurements.

**Please cite original paper (Stocker et al., 2017) when using this data.**

## Original citation: 
Stocker, B.D., Yu, Z., Massa, C., Joos, F.: Holocene peatland and ice core data constraints on the
timing and magnitude of CO2 emissions from past land use, PNAS, 2017

## Data citation: 
- Stocker, B.D., Z. Yu, C. Massa, and F. Joos. 2017. Global Peatland Carbon Balance and Holocene Carbon Emissions From Land Use Change. ORNL DAAC, Oak Ridge, Tennessee, USA. http://dx.doi.org/10.3334/ORNLDAAC/1374

## Original references of land use scenarios used in Stocker et al., 2017:
- Goldewijk KK (2001) Estimating global land use change over the past 300 years: The HYDE database. Global Biogeochem Cycles 15 (2):417–433.
- Klein Goldewijk K (2016) A historical land use data set for the Holocene; HYDE 3.2. Available at https://doi.org/10.17026/dans-2ct-fmud. Accessed June 7, 2016.
- Kaplan JO, Krumhardt KM, Zimmermann N (2009) The prehistoric and preindustrial deforestation of Europe. Quat Sci Rev 28(27-28):3016–3034.

last update, 9.3.2017

