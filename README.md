ifdmR
=====

`ifdmR` oferece funções para fazer o download e ler os indicadores do Indíce Firjan de Desenvolvimento Municipal (IFDM), http://www.firjan.com.br/ifdm/

### Installation

`ifdmR` pode ser instaldor pelo [GitHub](https://github.com/). para isso:

``` {.r}
if (!require("devtools")) install.packages("devtools")
devtools::install_github("silvadenisson/ifdmR")
```

### Como trabalhar com ele

Para fazer o download é só escolher o indicador:

``` {.r}
library(ifdmR)
df <- down.ifdm("Geral")
```

Para ler um arquivo do ifdm
``` {.r}
df <- read.ifdm("Geral_ifdm.xls")
```

### Authors

[Denisson Silva](http://denissonsilva.com).
