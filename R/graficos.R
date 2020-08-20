#' Série temporal de vítimas
#'
#' Cria uma série temporal de vítimas de um município. Fonte: Sinesp.
#'
#' @param tab Base de dados do Sinesp por município.
#' @param munip Uma string com o nome do município assim como na base.
#' @export
criar_serie_municipio <- function(tab, munip) {
  tab %>%
    dplyr::filter(municipio == munip) %>%
    ggplot2::ggplot() +
    ggplot2::geom_line(ggplot2::aes(x = mes_ano, y = vitimas)) +
    ggplot2::labs(y = "Número de vítimas", x = "Mês", title = munip) +
    ggplot2::theme_minimal()
}
