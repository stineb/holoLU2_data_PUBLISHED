# Data from Stocker et al. (2017) PNAS

This dataset contains all time series data for the peatland carbon balance and land use change emissions as published in Stocker et al., 2017. Provided are CSV files for global time series covering the Holocene (last 11,000 yr) until 1950 CE.
Available files:
- `dcpeat_lpx_stocker17pnas.csv` : Global total peatland annual net ecosystem productivity and carbon storage in peatland soils, simulated by LPX-Bern (using DYPTOP module for dynamically simulating peatland distribution and C, as described in Stocker et al., 2014, GMD)
- `dcpeat_yml_stocker17pnas.csv` : Global total peatland net carbon balance, derived from 64 dated peat cores, termed 'YML' in Stocker et al., 2017. Includes summary statistics from 1000 individual Monte Carlo reconstructions.
- `dcpeat_cum_yml_stocker17pnas.csv` : Global total cumulative peatland net carbon balance, derived from 64 dated peat cores, termed 'YML' in Stocker et al., 2017. Includes summary statistics from 1000 individual Monte Carlo reconstructions.
- `luc_co2_emissions_stocker17pnas.csv` : Annual and cumulative CO2 emissions from land use change following different scenarios (HYDE 3.1 [Goldewijk et al., 2001], HYDE 3.2 [Goldewijk, 2016], KK10 [Kaplan et al., 2009] and KK10D)
- `example_plot.R` : Reads the provided data files and creates figures like Fig. 1 and S8 in Stocker et al., 2017.

Uncertainty estimates are available for the peatland carbon balance (YML dataset) and is assessed by a set of 1000 Monte Carlo simulations that account for uncertainty in peat core measurements and uncertainty in parameters used to derive the global peatland carbon balance for multiple core measurements.

Please cite Stocker et al. (2017) when using this data.

Citation: 
Stocker, B.D., Yu, Z., Massa, C., Joos, F.: Holocene peatland and ice core data constraints on the timing and magnitude of CO2 emissions from past land use, PNAS, 2017 

Original references of land use scenarios used in Stocker et al., 2017:
- Goldewijk KK (2001) Estimating global land use change over the past 300 years: The HYDE database. Global Biogeochem Cycles 15 (2):417–433.
- Klein Goldewijk K (2016) A historical land use data set for the Holocene; HYDE 3.2. Available at https://doi.org/10.17026/dans-2ct-fmud. Accessed June 7, 2016.
- Kaplan JO, Krumhardt KM, Zimmermann N (2009) The prehistoric and preindustrial deforestation of Europe. Quat Sci Rev 28(27-28):3016–3034.

b. stocker, jan 2017
contact: beni.stocker@env.ethz.ch

