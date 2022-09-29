libary(dplyr)
MechaCar_dataframe <- read.csv(file.choose())
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar_dataframe)
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = MechaCar_dataframe))

suspension_coils <- read.csv(file.choose())
total_summary <- suspension_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

t.test(suspension_coils$PSI, mu=1500)
t.test(subset(suspension_coils$PSI, suspension_coils$Manufacturing_Lot=="Lot1"), mu=1500)
t.test(subset(suspension_coils$PSI, suspension_coils$Manufacturing_Lot=="Lot2"), mu=1500)
t.test(subset(suspension_coils$PSI, suspension_coils$Manufacturing_Lot=="Lot3"), mu=1500)
