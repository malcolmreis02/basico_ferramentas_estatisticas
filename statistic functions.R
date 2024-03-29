dados = iris

tamanho_petala = iris$Petal.Width

mean(tamanho_petala) #media
sd(tamanho_petala) #desvio padrao
var(tamanho_petala) #vari�ncia
median(tamanho_petala) #mediana

library(tidyverse)
library(readxl)

mean(tamanho_petala, na.rm = T)
tamanho_petala %>% mean(na.rm = T)

#pegando o objeto dados e aplicando nele  fun��o filter e ap�s o filter e assim por diante
#o pipe %>% � uma fun��o do tidyverse
dados_setosa = dados %>%
  filter(iris$Species=='setosa')



ggplot(dados_setosa, aes(x=dados_setosa$Petal.Length, 
                         y=dados_setosa$Petal.Width, 
                         color= dados_setosa$Species)) + 
        geom_line() + 
        labs(title='Plotagem do gr�fico', 
             x= 'Altura da petala', 
             y='Largura da petala',
             color = 'Legenda') +
        theme_minimal()