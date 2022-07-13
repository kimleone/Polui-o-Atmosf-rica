# Poluicao Atmosferica

A poluição atmosférica refere-se a mudanças da atmosfera terrestre suscetíveis de causar impacto a nível ambiental ou de saúde humana, através da contaminação por gases, partículas sólidas, líquidos em suspensão, material biológico ou energia.

## Material Particulado

Material particulado é o termo utilizado para uma mistura de partículas sólidas e gotas de líquidos encontrados na atmosfera. Algumas dessas partículas podem ser grandes, escuras e, portanto, visíveis, tais como a fumaça ou a fuligem. Outras são tão pequenas que somente podem ser vistas através de um microscópio.

![](https://i.ytimg.com/vi/9rPTblS_Gec/maxresdefault.jpg)

Neste repositório, temos bases de dados que contém o nível de Material Particulado (PM10) em alguns municípios de Minas Gerais. Essas bases de dados foram construídas com os dados disponíveis no site da Fundação Estadual do Meio Ambiente ([FEAM](http://www.feam.br/qualidade-do-ar/dados).
Além das bases de dados, também disponibilizo alguns códigos que utilizei nessas bases de dados para análise. Segue informações referentes a cada um dos arquivos disponíveis:

---
No arquivo [Dados(Completo)](https://github.com/kimleone/Poluicao-Atmosferica/blob/main/Dados(Completo).csv), temos as concentração de PM10 em 29 estações espalhadas pelo estado de Minas Gerais. O período das concentrações de PM10 é de janeiro de 2015 a janeiro de 2019. Como os dados originais apresentavam dados faltantes, utilizamos a função `na_kalman` do pacote `imputeTS` do Software $R$ para imputação dos valores faltantes. O dicionário das estações e algumas informações como quantidade de dados faltantes e a respeito das empresas responsáveis pela coleta podem ser consultadas a seguir:

Name | Name of station | Responsible Company | Longitude | Latitude | Rate of missing values
-----|-----------------|---------------------|-----------|----------|-----------------------
Betim1 | Alterosa | Refinaria Gabriel Passos |	44d09'39.06"W |	19d56'51.18"S |	0.1673 
Betim2 | Centro Administrativo Betim  | Refinaria Gabriel Passos |		44d12'26.00"W	| 19d58'07.98"S   |	0.0877 
Betim3 | Petrovale	| Refinaria Gabriel Passos |	44d06'40.05"W |	19d59'39.93"S |	0.1216 
BH1	| Centro Av. do Contorno | Refinaria Gabriel Passos	|	43d56'08.87"W |	19d54'48.02"S | 0.0438 
BH2 | Delegacia Amazonas | V\&M do Brasil S.A | 43d59'41.50"W |	19d56'14.90"S |	0.2250 
Brumadinho2 |	Comunidade do Feijão	| Vale S.A |	44d06'32.19"W |	20d08'09.13"S |	0.2492
C..Fabriciano |	Senac  - (Vale do Aço)	| Aperam Inox S.A	| 42d37'38.00"W |	19d31'49.00"S | 0.1119
Contagem | Cidade Industrial | V\&M do Brasil S.A |	44d01'54.27"W |	19d57'38.07"S &	0.2709
Ibirité1 | Cascata | Refinaria Gabriel Passos | 44d05'10.73"W |	19d59'15.31"S |	0.1019 
Ibirité2  |	Piratininga (Ibiritermo)	| Refinaria Gabriel Passos |	44d03'34.89"W  |  20d00'14.27"S	|  0.0471 
Ipatinga1  |	Bom Retiro	| Usiminas |	42d33'25.28"W  |	19d30'34.55"S  |	0.0877
Ipatinga2  |	Cariru	| Usiminas |	42d31'43.46"W |	19d29'28.92"S |	0.0929 
Ipatinga3 |	Cidade Nobre | Usiminas |	42d33'36.74"W |	19d27'40.22"S |	0.0745 
Itabira2  |	Félix (EAMA 31)	| Vale S.A |	43d14'14.68"W  |	19d39'15.00"S  |	0.1909 
Itabira3 |	Major Lage (EAMA 21)	| Vale S.A |	43d14'13.02"W |	19d38'08.09"S |	0.0560
Itabira4  | Panorama (EAMA 41)	  | Vale S.A |	43d13'19.10"W  |	19d38'04.10"S  |	0.0885 
Itabira5  |	Pará (EAMA 11)	| Vale S.A | 	43d13'50.85"W  |	19d37'10.00"S  |	0.1924 
Paracatu1  |	Clube da União 	| Kinross Gold Corporation |	46d53'10.86"W  |	17d12'56.88"S  |	0.2263 
Paracatu2  |	Copasa	| Kinross Gold Corporation |  46d52'27.36"W  |	17d12'19.74"S  |	0.2467 
Paracatu3 | Lagoa Trindade Rodrigues	| Kinross Gold Corporation |	46d49'58.50"W |	17d09'01.47"S |	0.1642 
Paracatu4	| São Domingos	| Kinross Gold Corporation |	46d52'27.36"W  |	17d11'53.82"S	| 0.1746 
Paracatu5  |	Sérgio Ulhoa 	| Kinross Gold Corporation |	46d52'30.60"W |	17d13'28.44"S  |	0.1262 
S.J.daLapa1 |	Célvia (Vespasiano)	| Belocal | 43d58'07.83"W | 19d42'45.01"S | 0.2041
S.J.daLapa2 |	Centro (Delegacia)	| Belocal |	43d57'36.70"W  |	19d42'00.54"S  |	0.1703
S.J.daLapa3	| Jardim Encantado 	| ICAL |	43d56'17.33"W	| 19d41'49.21"S |	0.2114
S.J.daLapa4 |	Escola Municipal Filinha Gama |	ICAL |	43d57'50.73"W  |	19d42'47.45"S |	0.3371
Timóteo1 | Cecília Meireles 	| Aperam Inox S.A |	42d39'23.00"W  |	19d32'47.00"S | 0.2533
Timóteo2 |	Escola Sementinha | Aperam Inox S.A |	42d40'16.00"W  |	19d32'12.00"S | 0.0908
Timóteo3  |	Hospital Vital Brazil	| Aperam Inox S.A|	42d38'33.00"W  |	19d32'59.00"S |	0.1017

O arquivo [EstacaoPucSaoGabriel2019-BH](https://github.com/kimleone/Poluicao-Atmosferica/blob/main/EstacaoPucSaoGabriel2019-BH.csv) temos uma das bases de dados disponibilizadas pela [FEAM](http://www.feam.br/qualidade-do-ar/dados). Este arquivo tem os dados da qualidade do ar no município de Belo Horizonte (na estação Puc São Gabriel). Realizamos a limpeza dos dados brutos, cujo código está disponível em:
- [Limpeza](https://github.com/kimleone/Poluicao-Atmosferica/blob/main/Limpeza.Rmd). 

Assim, a base de dados da qualidade do ar da estação Puc São Gabriel após a limpeza está disponível em: 
- [Poluicao(Limpo)](https://github.com/kimleone/Poluicao-Atmosferica/blob/main/Poluicao(Limpo).csv). 

Para os dados da estação Puc São Gabriel, realizamos a aplicação de uma rede neural Long short-term memory (LSTM). O código deste modelo está disponível em: 
- [LSTM(PM10)](https://github.com/kimleone/Poluicao-Atmosferica/blob/main/LSTM(PM10).ipynb)

Nesse arquivo, nosso principal objetivo foi prever a concentração de PM10 nas ultimas 24 horas de 2019 na estação Puc São Gabriel.
