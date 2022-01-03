# themes



#' @title theme_analytics
#' @description  Custome ggplot theme
#'#'
#' @rdname theme_analytics
#'
#' @keywords internal
#' @export 
#' @import ggplot2

theme_flynn <- function(background = '#ffffff') {
  
  theme(plot.background = element_rect(fill = background, colour = NA),
        strip.text = element_blank(), 
        axis.text = element_text(margin = ggplot2::margin(0, 0, 0, 10), 
                                 colour = colorspace::darken("#2a3b56", 0.3), 
                                 size = 12), 
        
        plot.title = element_text(hjust = 0.5, size = 20, 
                                  colour = "#2a3b56"), 
        plot.subtitle = element_text(hjust = 0.5, size = 12, 
                                     margin = ggplot2::margin(10, 0, 0, 0), 
                                     colour = colorspace::lighten("#2a3b56", 0.3)), 
        plot.caption = element_text(colour = "#2a3b56", size = 10, 
                                    margin = ggplot2::margin(20, 0, 0, 0)), 
        plot.margin = ggplot2::margin(20, 20, 20, 20))
}