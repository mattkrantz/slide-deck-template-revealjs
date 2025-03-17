# theme/font sizes for figure in slide deck

library(ggplot2)
library(here)

plotTheme <- theme_classic() +
  theme(plot.title = element_text(size = 20),
        text = element_text(family = "Arial"),
        strip.text = element_text(size=18),  
        axis.text = element_text(color="black", size=15),  
        axis.title = element_text(size=18),  
        legend.position="bottom",  
        legend.text=element_text(size=15),  
        legend.title=element_text(size=18))  

plot = ggplot(data=mpg, aes(displ,hwy)) + geom_point() + plotTheme

ggsave(here("figures", "fig-1.png"), plot,height=1080, width=1920, units = "px")
