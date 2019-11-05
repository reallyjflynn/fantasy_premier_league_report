# themes

#' @title theme_clean_dark
#' @description  Custome ggplot theme
#'#'
#' @rdname theme_clean_dark
#'
#' @keywords internal
#' @export 
#' @import ggplot2
#' 

theme_clean_dark <- function(base_size = 14,
                             legend.position = 'bottom') {
        
        ggplot2::theme_minimal(base_size = base_size) + 
                theme(
                        plot.margin = ggplot2::unit(rep(1.2, 4), "cm"),
                        plot.title = ggplot2::element_text(size = 19, 
                                                           face = "bold",
                                                           color = "#f2f3f5",
                                                           margin = ggplot2::margin(b = 8)),
                        plot.background = ggplot2::element_rect(fill = "#1a1c2e"),
                        plot.subtitle = ggplot2::element_text(size = 14, 
                                                              lineheight = 1.1,
                                                              color = "#e6e7eb",
                                                              margin = ggplot2::margin(b = 45)),
                        panel.grid.minor.x = ggplot2::element_blank(),
                        panel.grid.minor.y = ggplot2::element_blank(),
                        panel.grid.major.y = ggplot2::element_line(color = "#21243a"),
                        panel.grid.major.x = ggplot2::element_line(color = "#21243a"),
                        axis.text = ggplot2::element_text(color = "#e6e7eb", size = 10),
                        axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 5)),
                        axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = 5)),
                        axis.title = ggplot2::element_text(size = 14, color = "#e6e7eb"),
                        axis.title.y = ggplot2::element_text(margin =ggplot2:: margin(r = 20),
                                                             hjust = 1),
                        axis.ticks = ggplot2::element_line(color = "#c2c3cf"),
                        axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 15),
                                                             hjust = 1),
                        axis.line = ggplot2::element_line(color = "#878890")
                )
        
}


#' @title theme_clean_light
#' @description  Custome ggplot theme
#'#'
#' @rdname theme_clean_light
#'
#' @keywords internal
#' @export 
#' @import ggplot2
#' 

theme_clean_light <- function(base_size = 14,
                              legend.position = 'bottom') {
        
        ggplot2::theme_minimal(base_size = base_size) + 
                theme(
                        plot.margin = ggplot2::unit(rep(1.2, 4), "cm"),
                        plot.title = ggplot2::element_text(size = base_size + 5, 
                                                           face = "bold",
                                                           margin = ggplot2::margin(b = 8)),
                        plot.subtitle = ggplot2::element_text(size = base_size - 2, 
                                                              lineheight = 1.1,
                                                              margin = ggplot2::margin(b = 45)),
                        panel.grid.minor.x = ggplot2::element_blank(),
                        panel.grid.minor.y = ggplot2::element_blank(),
                        axis.text = ggplot2::element_text(size = 10),
                        axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 5)),
                        axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = 5)),
                        axis.title = ggplot2::element_text(size = 14),
                        axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = 20),
                                                             hjust = 1),
                        axis.ticks = ggplot2::element_line(),
                        axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 15),
                                                             hjust = 1),
                        axis.line = ggplot2::element_line()
                )
        
}


