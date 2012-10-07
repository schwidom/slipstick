
prefix="skala1_"

#dev.new()

source( 'plotSlipStick.R')

for( r in 1:3)
{

 #png( paste( 'slipstick_r', r, '.png', sep=''), width=10000, height= 900)
 png( paste( 'slipstick_r', r, '.png', sep=''), width=2000, height= 900)

 plotSlipStick( depth= 3, repeats= r) # depth=3 default, 4 geht, 2 geht

 dev.off()
}
