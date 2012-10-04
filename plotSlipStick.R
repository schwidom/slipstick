
plotSlipStick <- function( depth=3)
{

 log10= log( 10)
 
 l= function( n) log( n)/log10
 e= function( n) exp( n*log10)
 
 skala_10= 10
 plot( c( 0, l( skala_10)), c( -1, +1), col='white')
 
 skala_eps= 10**(-depth -1)
 skala_epsAdd= skala_eps / 2
 
 for( i in seq( 1, skala_10, length.out=10**depth - (10**(depth-1) -1))) # 100 - 9, 1000 - 99, ...
 {
  offs= 0.1
  p = function( x){ print( x)}
  p = function( x){ }
  p( paste( "i", i))
  if( i %in% 1:10){ lines( c( l( i), l( i)), c( -offs -0.3, offs +0.3))}
  else if( (i + skala_epsAdd) %% 0.1 < skala_eps ){ p( "rule 2"); lines( c( l( i), l( i)), c( -offs -0.2, offs +0.2)) }
  else if( (i + skala_epsAdd) %% 0.01 < skala_eps && i < 2){ p( "rule 3"); lines( c( l( i), l( i)), c( -offs -0.1, offs +0.1))}
  else if( (i + skala_epsAdd) %% 0.02 < skala_eps && 2 < i && i < 4){ p( "rule 4"); lines( c( l( i), l( i)), c( -offs -0.1, offs +0.1))}
  else if( (i + skala_epsAdd) %% 0.05 < skala_eps && 4 < i ){ p( "rule 5"); lines( c( l( i), l( i)), c( -offs -0.1, offs +0.1)) }
  # else
   # lines( c( l( i), l( i)), c( -0.1, +0.1))
 }
}

