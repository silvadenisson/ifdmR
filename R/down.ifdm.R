#' down.ifdm
#' Faz o download dos indicadores do Indice Firjan de Desenvolvimento Municipal (ifdm)
#' O resuldo eh um arquivo em xls no diretorio de trabalho
#' a serie disponivel eh de 2003 a 2013, eh um arquivo unico
#' @param indicador pode receber um dos quatro valores
#' Geral - indice geral do idfm
#' Educ - indicador de educacao
#' Empre - indicador de Emprego e Renda
#' Saud - indicador de Saude
#' @export
#' @examples
#' \dontrun{
#' down.ifdm("Geral")
#' }

down.ifdm <- function(indicador = "Geral"){
  if(indicador %in% c("Geral", "Educ", "Empre", "Saud")){
    if(indicador == "Geral"){
      download.file("http://www.firjan.com.br/data/files/11/04/E5/97/F1B8461049FF6646A8A809C2/Evolu__o%20do%20IFDM%20Geral%20-%202005%20a%202016.xlsx", "Geral_ifdm.xlsx")
      cat("Download terminado, arquivo salvo como: 'Geral_ifdm.xls'")
    }

    if(indicador == "Educ"){
      download.file("http://www.firjan.com.br/data/files/5B/F3/48/87/F1B8461049FF6646A8A809C2/Evolu__o%20do%20IFDM%20Educa__o%20-%202005%20a%202016.xlsx", "Educ_ifdm.xlsx")
      cat("Download terminado, arquivo salvo como: 'Educ_ifdm.xls'")
    }

    if(indicador == "Empre"){
      download.file("http://www.firjan.com.br/data/files/2E/F3/1F/87/F1B8461049FF6646A8A809C2/Evolu__o%20do%20IFDM%20EmpregoRenda%20-%202005%20a%202016.xlsx", "Empre_ifdm.xlsx")
      cat("Download terminado, arquivo salvo como: 'Empre_ifdm.xls'")
    }

    if(indicador == "Saud"){
      download.file("http://www.firjan.com.br/data/files/04/04/CC/97/F1B8461049FF6646A8A809C2/Evolu__o%20do%20IFDM%20Sa_de%20-%202005%20a%202016.xlsx", "Saud_ifdm.xlsx")
      cat("Download terminado, arquivo salvo como: 'Saud_ifdm.xls'")
    }

  }else{
    cat('Nome do Indicador incorreto! Só pode ser um desse: "Geral", "Educ", "Empre", "Saud"')
  }
}

utils::globalVariables(".")
