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
      download.file("http://www.firjan.com.br/data/files/A2/83/66/3B/143615101BF66415F8A809C2/Evolução%20do%20IFDM%20Geral%20-%202005%20a%202013.xls", "Geral_ifdm.xls")
      cat("Download terminado, arquivo salvo como: 'Geral_ifdm.xls'")
    }

    if(indicador == "Educ"){
      download.file("http://www.firjan.com.br/data/files/71/12/EB/20/E33615101BF66415F8A809C2/Evolução%20do%20IFDM%20Educação%20-%202005%20a%202013.xls", "Educ_ifdm.xls")
      cat("Download terminado, arquivo salvo como: 'Educ_ifdm.xls'")
    }

    if(indicador == "Empre"){
      download.file("http://www.firjan.com.br/data/files/71/12/EB/20/E33615101BF66415F8A809C2/Evolução%20do%20IFDM%20Educação%20-%202005%20a%202013.xls", "Empre_ifdm.xls")
      cat("Download terminado, arquivo salvo como: 'Empre_ifdm.xls'")
    }

    if(indicador == "Saud"){
      download.file("http://www.firjan.com.br/data/files/71/12/EB/20/E33615101BF66415F8A809C2/Evolução%20do%20IFDM%20Educação%20-%202005%20a%202013.xls", "Saud_ifdm.xls")
      cat("Download terminado, arquivo salvo como: 'Saud_ifdm.xls'")
    }

  }else{
    cat('Nome do Indicador incorreto! Só pode ser um desse: "Geral", "Educ", "Empre", "Saud"')
  }
}

utils::globalVariables(".")
