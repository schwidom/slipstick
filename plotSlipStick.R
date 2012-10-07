
plotSlipStick <- function( depth=3, repeats=2)
{

 log10= log( 10)
 
 l= function( n) log( n)/log10
 e= function( n) exp( n*log10)
 
 skala_10= 10
 plot( c( 0, l( skala_10)), c( -1, +1), col='white')
 
 skala_eps= 10**(-depth -1)
 skala_epsAdd= skala_eps / 2
 
 for( r in 1:repeats)
 {

  viewX= function( x){ part= 1/repeats; partN= r-1; part*(partN+ x);}

 for( i in seq( 1, skala_10, length.out=10**depth - (10**(depth-1) -1))) 
 {
  if( i == skala_10 && r < repeats) next;

  offs= 0.1
  offsTxt= 0.08
  #p = function( x){ print( x)}
  p = function( x){ }
  p( paste( "i", i))
  if( i %in% 1:10)
  {
   lines( viewX( c( l( i), l( i))), c( -offs -0.3, offs +0.3));
   text( viewX( l( i)), offs +0.3 +offsTxt, i, cex=0.8);
   text( viewX( l( i)), -offs -0.3 -offsTxt, i, cex=0.8);
  }
  else if( (i + skala_epsAdd) %% 0.1 < skala_eps )
  {
   p( "rule 2");
   lines( viewX( c( l( i), l( i))), c( -offs -0.2, offs +0.2));
   if( i < 8 || (i < 10 && (i + skala_epsAdd) %% 0.2 < skala_eps))
   {
    text( viewX( l( i)), offs +0.2 +offsTxt, trunc( 10* ( skala_epsAdd+ i - trunc( i))), cex=0.5);
    text( viewX( l( i)), -offs -0.2 -offsTxt, trunc( 10* ( skala_epsAdd+ i - trunc( i))), cex=0.5);
   }
  }
  else if( (i + skala_epsAdd) %% 0.01 < skala_eps && i < 2)
  {
   p( "rule 3");
   lines( viewX( c( l( i), l( i))), c( -offs -0.1, offs +0.1))
  }
  else if( (i + skala_epsAdd) %% 0.02 < skala_eps && 2 < i && i < 4)
  {
   p( "rule 4");
   lines( viewX( c( l( i), l( i))), c( -offs -0.1, offs +0.1))
  }
  else if( (i + skala_epsAdd) %% 0.05 < skala_eps && 4 < i )
  {
   p( "rule 5");
   lines( viewX( c( l( i), l( i))), c( -offs -0.1, offs +0.1))
  }
  # else
   # lines( c( l( i), l( i)), c( -0.1, +0.1))
 }
 }
}

