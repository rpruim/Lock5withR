load('SandP500.rda')


SandP500 <- transform(SandP500, MDY = lubridate::mdy(as.character(Date)))
                      
