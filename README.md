# Data from Stocker et al. (2017) PNAS

This dataset contains all time series data for the peatland carbon balance and land use change emissions as published in Stocker et al., 2017. Provided are CSV files for global time series covering the Holocene (last 11,000 yr) until 1950 CE.
Available files:
- `dcpeat_lpx_stocker17pnas.csv` : Global total peatland annual net ecosystem productivity and carbon storage in peatland soils, simulated by LPX-Bern (using DYPTOP module for dynamically simulating peatland distribution and C, as described in Stocker et al., 2014, GMD)
- `dcpeat_yml_stocker17pnas.csv` : Global total peatland net carbon balance, derived from 64 dated peat cores, termed 'YML' in Stocker et al., 2017. Includes summary statistics from 1000 individual Monte Carlo reconstructions.
- `dcpeat_cum_yml_stocker17pnas.csv` : Global total cumulative peatland net carbon balance, derived from 64 dated peat cores, termed 'YML' in Stocker et al., 2017. Includes summary statistics from 1000 individual Monte Carlo reconstructions.
- `luc_co2_emissions_stocker17pnas.csv` : Annual and cumulative CO2 emissions from land use change following different scenarios (HYDE 3.1, HYDE 3.2, KK10 and KK10D)
- `example_plot.R` : Reads the provided data files and creates figures like Fig. 1 and S8 in Stocker et al., 2017.

Uncertainty estimates are available for the peatland carbon balance (YML dataset) and is assessed by a set of 1000 Monte Carlo simulations that account for uncertainty in peat core measurements and uncertainty in parameters used to derive the global peatland carbon balance for multiple core measurements.

Please cite Stocker et al. (2017) when using this data.

Citation: 
Stocker, B.D., Yu, Z., Massa, C., Joos, F.: Holocene peatland and ice core data constraints on the timing and magnitude of CO2 emissions from past land use, PNAS, 2017 

b. stocker, jan 2017
contact: beni.stocker@env.ethz.ch

