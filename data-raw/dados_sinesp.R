## code to prepare `dados_sinesp` dataset goes here

usethis::use_data(dados_sinesp, overwrite = TRUE)
caminho <- "data_raw/indicadoressegurancapublicamunicmar20.xlsx"
abas <- readxl::excel_sheets(caminho)
dados_sinesp <- purrr::map_dfr(
  abas,
  ~readxl::read_excel(
    path = caminho,
    sheet = .x,
    col_types = c("text", "text", "text", "date", "numeric")
  )
)

library(janitor)
dados_sinesp <- dados_sinesp %>%
  janitor::clean_names()

usethis::use_data(dados_sinesp, overwrite = TRUE)

usethis::use_data_raw("grafico_bh")
