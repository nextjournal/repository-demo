artists <- read_csv("/repository-demo/artist_data.csv")

born <- artists$yearOfBirth

birth_distribution = smoothScatter(born, 1:length(born), axes=FALSE,
									        				 main="Birth Distribution of Artists at the Tate", 
                                   xlab="Year", ylab="ID Number")                            
axis(1, col.ticks="blue")

birth_distribution
