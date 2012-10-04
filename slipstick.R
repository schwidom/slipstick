
prefix="skala1_"

#dev.new()

source( 'plotSlipStick.R')

png( 'slipstick.png', width=10000, height= 900)

plotSlipStick( depth=3) # depth=3 default, 4 geht, 2 geht

dev.off()
