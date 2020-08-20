## code to prepare `grafico_bh` dataset goes here

usethis::use_data(grafico_bh, overwrite = TRUE)

devtools::load_all()

dados_sinesp %>%
  dplyr::filter(municipio == "Belo Horizonte") %>%
  ggplot2::ggplot() +
  ggplot2::geom_line(ggplot2::aes(x = mes_ano, y = vitimas)) +
  ggplot2::labs(y = "Número de vítimas", x = "Mês", title = "Belo Horizonte") +
  ggplot2::theme_minimal()

usethis::use_r("graficos")
