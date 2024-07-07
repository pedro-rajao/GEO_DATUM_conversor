########################################
# autor: Pedro Rajão
# data da criação: 10-03-2022
# data da edição:
# editor: 
# objetivo: transformar coordenadas geográficas de UTM para grau decimal e vice-versa
########################################


# pacote(s)
library(PBSmapping)

# entrada de dados
data_GEO1 = read.table(file.choose(), dec=",", header=T) #data com duas colunas. Long = X e Lat = Y
head(data_GEO1)
str(data_GEO)

attr(data_GEO1, "projection", zone) = "LL" # inserindo projeção dos dados. "projetction" - LL = para transformar de Gradu Decimal para UTM. 
                                    # "zone" - 21, 22, 23 ... = para transformar de UTM para grau decimal.
data_GEO_UTM = convUL(data_GEO1) # km = F, para inserir/extrair UTM em metros e não quilômetros.


