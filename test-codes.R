library(ggplot2)

theme_wombat <- function(){
  font <- "Lato"
  
  theme_bw() %+replace%
    
    theme(
      # grid elements
      panel.grid.minor = element_blank(),
      panel.border = element_rect(color = "#dadadf", fill = NA),
      
      # strip elements
      strip.background = element_rect(color = "#dadadf", fill = "#dadadf"),
      strip.text = element_text(face = "bold",
                                size = rel(1.1)),
      
      # axis elements
      axis.title = element_text(face = "bold", size = rel(1.1)),
      axis.title.x = element_text(margin = margin(0.5,0,0,0, unit = "cm")),
      axis.title.y = element_text(margin = margin(0,0.5,0,0, unit = "cm"),
                                  angle = 90),
      axis.line = element_line(color = "#222222"),
      axis.text = element_text(family = font),
      
      # legend elements
      legend.position = "bottom",
      legend.direction = "horizontal",
      
      # plot elements
      plot.title = element_text(size = rel(1.6),
                                face = "bold",
                                hjust = 0,
                                margin = margin(0,0,0.2,0, unit = "cm")),
      plot.subtitle = element_text(size = rel(1.2),
                                   margin = margin(0,0,0.5,0, unit = "cm"),
                                   hjust = 0),
      plot.caption = element_text(size = rel(0.8),
                                  margin = margin(1,0,0,0, unit = "cm"),
                                  hjust = 1)
    )
}

theme_seagull <- function(){
  font <- "Lato"
  
  theme_minimal() %+replace%
    
    theme(
      # grid elements
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      
      # strip elements
      strip.text = element_text(face = "bold",
                                size = rel(1.1)),
      
      # axis elements
      axis.title = element_text(face = "bold", size = rel(1.1)),
      axis.title.x = element_text(margin = margin(0.5,0,0,0, unit = "cm")),
      axis.title.y = element_text(margin = margin(0,0.5,0,0, unit = "cm"),
                                  angle = 90),
      axis.text = element_text(family = font),
      axis.line.x = element_line(color = "#222222"),
      axis.ticks.x = element_line(),
      
      # legend elements
      legend.position = "bottom",
      legend.direction = "horizontal",
      
      # plot elements
      plot.title = element_text(size = rel(1.6),
                                face = "bold",
                                hjust = 0,
                                margin = margin(0,0,0.2,0, unit = "cm")),
      plot.subtitle = element_text(size = rel(1.2),
                                   margin = margin(0,0,0.5,0, unit = "cm"),
                                   hjust = 0),
      plot.caption = element_text(size = rel(0.8),
                                  margin = margin(1,0,0,0, unit = "cm"),
                                  hjust = 1)
    )
}

ggplot(mtcars, aes(mpg,disp,color=factor(carb))) + 
  geom_point(size=3) + 
  labs(title="Scatter Plot",
       subtitle = "disp vs mpg",
       caption = "Data: mtcars") +
  theme_seagull()

ggplot(mtcars, aes(mpg,disp,color=factor(carb))) + 
  geom_point(size=3) + 
  labs(title="Scatter Plot",
       subtitle = "disp vs mpg",
       caption = "Data: mtcars") +
  theme_wombat()

ggplot(data = mpg,aes(cty, hwy,color=class))+geom_point(size=3) + 
  facet_wrap(~ manufacturer,scales="free")+
  labs(title="Plot With Facets") + 
  theme_wombat()

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl, scales = "free") + theme_bw()

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl, scales = "free") + theme_minimal()

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl, scales = "free") + theme_light()

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl, scales = "free")