#' read.ifdm
#' Faz a leitura dos arquivos (em xls)indicadores do Indice Firjan de Desenvolvimento Municipal (ifdm)
#' O resuldo eh um data.frame
#' @param arquivo recebe o endereco do arquivo xls
#' @param linha se FALSE (padrao) retorna um data.frame com os indicadores e ranking por ano em colunas,
#' se TRUE retorna um data.frame com os indicadores ou ranking por ano em linhas (observacao)
#' @param nota se TRUE retorna a nota do indicador se, FALSE ternona o ranking,
#' para esse paremetro o paremtro linha tem ser TRUE.
#' @export
#' @examples
#' \dontrun{
#' read.ifdm("Geral_ifdm.xls")
#' }
#'
read.ifdm <- function(arquivo, linha = F, nota = NULL){

  base <- readxl::read_excel(arquivo)

  for(i in 1:ncol(base)){
    if(!is.na(base[1, i])){
      names(base)[i] <- paste0("Nota_", base[1, i])
    }else{
      if(i > 4)
        names(base)[i] <- paste0("Ranking_", base[1, i - 1])
      names(base)[c(1:4)] <- base[2, c(1:4)]
    }
  }

  base <- base[-c(1:2), ]


    if(!is.null(nota)){
      if(linha == T){
      if(nota == T){
        base <- data.table::melt(base, id = c(1:4), measure = seq(5, 21, 2))
        base$variable <- gsub("Nota_", "", base$variable)
        names(base)[5:6] <- c("Ano", "Nota")
      }else{
        base <- data.table::melt(base, id = c(1:4), measure = seq(6, 22, 2))
        base$variable <- gsub("Ranking_", "", base$variable)
        names(base)[5:6] <- c("Ano", "Ranking")
      }
    }else{
      cat("O argumento nota necessita de TRUE ou FALSE, para quando o argumento linha é TRUE")
    }
  }

  return <- base
}
