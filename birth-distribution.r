artists <- read_csv("/repository-demo/artist_data.csv")
born <- artists$yearOfBirth
df <- data.frame(born)

ggplot(df, mapping=aes(x = born, y = as.numeric(row.names(df)))) + 
           geom_point(size=2.2, alpha=0.4, shape=15) + 
           labs(x = "Year", y=element_blank(),
                title = "Distribution of Artist's Birth Years at the Tate", 
                subtitle = "From the Museum's Permanent Collection") + 
           theme_bw() +
           theme(axis.text.y = element_blank(),
                 axis.ticks.y = element_blank(),
                 panel.grid.minor=element_blank(),
                 panel.grid.major.y=element_blank())
