% ===== LIMPEZA ===== %

close all;
clear all;
clc;
pkg load image;


% ===== FUNÇÕES ===== %

% Função para gerar o array celular de combinação
% do índice e a letra do alfabeto
function idxandletter = alphabet()
    idxandletter = {};
    for i=1:26
      idxandletter{i} = { i , char(64+i) };
    endfor
end


% ===== MAIN ===== %

% STRING PARA COMPARAR
texto = "nilson";

% CONVERTENDO STRING EM ARRAY CELULAR
teste = cellstr(num2cell(upper(texto)));

% CRIANDO ARRAY CELULAR DE COMBINAÇÃO DE INDICES E LETRAS
combined = alphabet();


% Separação das camadas da matriz da foto
img = imread("processar.png");


% Definição das posições iniciais na matriz
v0 = 1:100;
h0 = 1:100;

% Declaração da matriz que conterá a imagem final
Ione = [];

# Loop para combinação das letras na matriz "Ione"
for i=1:length(teste)
  for j=1:length(combined)
    if teste{i} == combined{j}{2}
      if combined{j}{1} > 13
        vconstant = 1;
      else
        vconstant = 0;
      endif
      vindex = 100 * vconstant;
      hindex = 100 * ( combined{j}{1} - 1 );
    endif
  endfor
  Ione = cat(2, Ione, img(v0+vindex,h0+hindex));
endfor

% Mostrar a imagem gerada
imshow(Ione);
