library(VAST)

# load data set
# see `?load_example` for list of stocks with example data
# that are installed automatically with `FishStatsUtils`.
example = load_example( data_set="EBS_pollock" )

# Make settings
settings = make_settings( n_x=50,
                          Region=example$Region,
                          purpose="index",
                          strata.limits=example$strata.limits )

# Run model
fit = fit_model( "settings"=settings,
                 "Lat_i"=example$sampling_data[,'Lat'],
                 "Lon_i"=example$sampling_data[,'Lon'],
                 "t_i"=example$sampling_data[,'Year'],
                 "c_i"=rep(0,nrow(example$sampling_data)),
                 "b_i"=example$sampling_data[,'Catch_KG'],
                 "a_i"=example$sampling_data[,'AreaSwept_km2'],
                 "v_i"=example$sampling_data[,'Vessel'] )

# Plot results
plot_results( settings=settings, fit=fit )
