load('SandP500.rda')


if (require(lubridate)) {
SandP500 <- transform(SandP500,
    MDY = mdy(as.character(Date))
)
}
                      
