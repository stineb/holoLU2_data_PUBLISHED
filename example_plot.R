##--------------------------------------------------------------------------
## example plot producing figure like Fig. 1 and S1 in Stocker et al., 2017
##--------------------------------------------------------------------------
rm( list=ls() )

peat_yml_lhnfix     <- read.csv( file="dcpeat_lpx_stocker17pnas.csv" )
peat_yml_lhnfix_cum <- read.csv( file="dcpeat_cum_yml_stocker17pnas.csv" )
peat_lpx            <- read.csv( file="dcpeat_lpx_stocker17pnas.csv" )
fluc_rdc            <- read.csv( file="luc_co2_emissions_stocker17pnas.csv" )
fluc                <- read.csv( file="fluc_crude.csv" )

add_alpha <- function( col, alpha ){
  ## add alpha to color given as a name
  col    <- col2rgb( col, alpha=TRUE )/255
  col[4] <- alpha
  col    <- rgb(col[1,],col[2,],col[3,],col[4,])
  return( col )
}

## vertical offsets correspond to peat C at 11 ka BP in original data
off            <- 24.654
off_lpx        <- 285.1803
off_lpx_masked <- 236.4059

  ##--------------------------------
  ## FIRST PLOT: PEAT NCB
  ##--------------------------------
  ## HOLOCENE
  ##--------------------------------
    print("plotting ... ")
    xlim <- c(-10000,2000)
    plot( range(peat_yml_lhnfix$year), range(peat_yml_lhnfix$median), type="n", ylab=expression( "annual peat C balance (PgC" ~ yr^{-1} ~ ")" ), xlab="", xlim=xlim )
    
    ## add +/- 1-sigma range to plot
    lines( peat_yml_lhnfix$year, peat_yml_lhnfix$q10 )
    lines( peat_yml_lhnfix$year, peat_yml_lhnfix$q90 )

    ## PEAT Add median to plot
    lines( peat_yml_lhnfix$year, peat_yml_lhnfix$median, col="dodgerblue4", lwd=2, lty=1 )

    ## Add model NEP to plot
    boxl <- 1
    lines( peat_lpx$year, peat_lpx$nep, lwd=1, col="dodgerblue2" )
    boxl <- 30
    lines( peat_lpx$year, peat_lpx$nep, lwd=2, col="dodgerblue2" )

    ##--------------------------------
    ## THIRD PLOT: CUMULATIVE CHANGES
    ##--------------------------------
    ## HOLOCENE
    ##--------------------------------
      pdf( "fig/dcpeat_masked.pdf", width=8, height=6 )
      par(las=1, xaxs="i")
      ylim <- c(0,650)
      plot( range(peat_yml_lhnfix$year), ylim, type="n", ylab="cumulative C uptake (PgC)", xlab="year CE", xlim=xlim, ylim=ylim )

      ## add +/- 1-sigma range to plot
      par( new=TRUE )
      plot( range(peat_yml_lhnfix$year), ylim, type="n", ylab="", xlab="", xlim=xlim, ylim=ylim, axes=FALSE )
      polygon( 
        c( peat_yml_lhnfix$year, rev(peat_yml_lhnfix$year) ), 
        c( peat_yml_lhnfix_cum$q10 - off, rev(peat_yml_lhnfix_cum$q90 - off) ),
        col=add_alpha( "dodgerblue4", 0.3 ), border=NA 
      )

      # ## Add median to plot
      lines( peat_yml_lhnfix_cum$year, peat_yml_lhnfix_cum$median - off, col="dodgerblue4", lwd=2, lty=1 )

      # ## Add model total peat C
      lines( peat_lpx$year, peat_lpx$totc - off_lpx, lwd=1, col="dodgerblue2" )
      lines( smooth.spline( peat_lpx$year,peat_lpx$totc - off_lpx, spar=0.7 ), lwd=2, col="dodgerblue2")

      ## model total peat C masked by today's peatlands
      lines( smooth.spline( peat_lpx$year, peat_lpx$totc_maskedby_lpxpres - off_lpx_masked, spar=0.7 ), lwd=2, lty=2, col="dodgerblue2")

      # off <- cumsum( peat_lpx$nep )[which( peat_lpx$year==-8995 )] * 10
      # lines( peat_lpx$year, cumsum( peat_lpx$nep ) * 10 - off, lty=2, lwd=2, col="dodgerblue2" )

      legend( "topleft", c( 
        expression(paste("peat, YML (",Delta ,"C"[peat],")")), 
        expression(paste("peat, LPX (",Delta ,"C"[peat],")")),
        expression(paste("peat, LPX (",Delta ,"C"[peat]," on today's peatland gridcells)"))
        ), lty=c(1,1,2), lwd=2, col=c("dodgerblue4","dodgerblue2","dodgerblue2"), bty="n" )
      dev.off()

    ##--------------------------------
    ## FIFTH PLOT: REMAINDER AND ELUC
    ##--------------------------------
    ## HOLOCENE
    ##--------------------------------
      ylim <- c(-400,100)
      plot( range(fluc_rdc$year), ylim, type="n", ylab="cumulative C uptake (PgC)", xlab="ka BP", xlim=xlim, ylim=ylim )

      lines( fluc_rdc$year, -fluc_rdc$hyde31_cum, col="tomato", lwd=1.5  )
      polygon( c(fluc_rdc$year, rev(fluc_rdc$year)), c(-fluc_rdc$hyde31_cum, rev(-fluc_rdc$hyde31u_cum)), col="tomato", border=NA )

      lines( fluc_rdc$year, -fluc_rdc$hyde32_cum, col="orchid", lwd=1.5  )
      polygon( c(fluc_rdc$year, rev(fluc_rdc$year)), c(-fluc_rdc$hyde32_cum, rev(-fluc_rdc$hyde32u_cum)), col="orchid", border=NA )

      lines( fluc_rdc$year, -fluc_rdc$kk10_cum, col="turquoise3", lwd=1.5, lty=2 )
      lines( fluc_rdc$year, -fluc_rdc$kk10d_cum, col="turquoise3", lwd=1.5 )

      lines( fluc$year, -fluc$hyde31_cum )
      lines( fluc$year, -fluc$hyde32_cum )
      lines( fluc$year, -fluc$kk10_cum)
      lines( fluc$year, -fluc$kk10d_cum )

      lines( fluc$year, -cumsum(fluc$kk10d) )