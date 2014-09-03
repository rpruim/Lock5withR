prop( ~ (result <= 30), data=Bootstrap )                # proportion less than 30 min
prop( ~ (result >= 31), data=Bootstrap )                # proportion greater than 31 min
prop( ~ (result >= 30 & result <= 31), data=Bootstrap ) # proportion between 30 and 31 min


