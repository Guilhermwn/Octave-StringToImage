# Octave-StringToImage

## Geração de Imagem a partir de Texto com Letras Pré-definidas

### Descrição

Este script foi desenvolvido em Octave e tem como objetivo gerar uma nova imagem com base em uma palavra definida pelo usuário. A imagem de origem (`processar.png`) contém as 26 letras do alfabeto distribuídas em uma matriz de 1300x200 px:

- As letras `A` a `M` estão dispostas na primeira linha, em 13 colunas.
- As letras `N` a `Z` estão dispostas na segunda linha, também em 13 colunas.

O script faz o processamento da string fornecida, mapeando cada letra para sua respectiva posição na imagem original e concatenando as subimagens para formar a palavra.

### Funcionalidade

1. **Leitura da Imagem**: O script começa lendo uma imagem PNG que contém as letras do alfabeto. Esta imagem tem tamanho 1300x200 px, onde cada letra ocupa uma célula de 100x100 px.
   
2. **Entrada da String**: O usuário define uma string de entrada (neste exemplo, `"nilson"`), e o script converte todas as letras para maiúsculas e as armazena em um array celular.

3. **Mapeamento de Letras**: Para cada letra da string fornecida, o script localiza sua posição na imagem original, seja na primeira ou na segunda linha, e extrai a subimagem correspondente.

4. **Concatenando as Imagens**: As subimagens extraídas são concatenadas horizontalmente, formando uma nova imagem que representa a palavra fornecida.

5. **Exibição da Imagem Final**: A imagem gerada é exibida com a função `imshow`.

### Exemplo de Execução

Se a string fornecida for `"nilson"`, o script irá:

- Procurar as letras `N`, `I`, `L`, `S`, `O`, `N` na imagem.
- Extrair as subimagens correspondentes e concatená-las para formar uma nova imagem que será exibida.

### Requisitos

- **Octave**: O script utiliza o Octave, com o pacote `image` para manipulação de imagens.
- **Imagem de Entrada**: A imagem de entrada (`processar.png`) deve seguir o formato especificado (letras do alfabeto em uma matriz 1300x200 px, com 26 células de 100x100 px cada).
