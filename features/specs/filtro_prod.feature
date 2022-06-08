#language: pt

Funcionalidade: Filtro

- Estou no ambiente de produçao
- Eu vou acessar um site na página de presentes 
- E com os filtros ativos, ordenaçao de preços
- Verificar se os campos estão devidamente em seus lugares
- Que o select esteja funcionando
- Em todos nossos layouts disponíveis - t43 a t-133

@prod_ativos
Cenário: Ativar filtro e ordenar
Dado que acessei o site em produçao com o filtro e ordenaçao ativa no <template>


# Cenário: Filtrar e ordenar ativo
# Quando identifico os seletores na página
# E clico em "menor preco"
# E clico em "Categorias todas" para abrir as opçoes
# Então devo confirmar que sua interface está de acordo com o solicitado