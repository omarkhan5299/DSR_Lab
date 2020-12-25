Buff_Tail <- c(10,1,37,5,12)
Garden_bee <- c(8,3,9,6,4)
Red_Tail <- c(1,8,9,12,4)
Carder_bee <- c(8,27,6,32,23)
Honey_Bee <- c(12,13,16,9,10)
df <- cbind.data.frame(Buff_Tail,Garden_bee,Red_Tail,Carder_bee,Honey_Bee)
df
rn <- c('Thistle', 'Vipers', 'Golden Rain', 'Yellowalfala','Blackberry')
row.names(df) <- rn
df
