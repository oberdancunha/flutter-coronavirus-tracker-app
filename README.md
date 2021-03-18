# Coronavirus Tracker App

Aplicação para consulta dos dados de covid.

## Dados

### Dados gerais

Dados totais da contaminação pelo mundo. Dados como:

1 - Endereço da api utlizada (cabeçalho da aplicação)
2 - Data da última atualização
3 - Total de casos (cases)
4 - Total de recuperados (recovery)
5 - Total de mortes (deaths)

Ao final um gráfico mostrando a proporção dos dados gerais da contaminação.

<img
  src="images/general_data.png"
  alt="generaldata"
  title="General data"
  width="210"
  height="450"
  border= "1px solid black"
/>

### Dados por localidade

Dados de contaminção de cada país. Nesse caso é um mapa com um marcador para cada país onde, ao clicar nesse marcador, uma janela (popup) mostra os detalhes de contaminação (país, casos, recuperados e mortos).

![Alt Text](images/location_data.gif)

## Erros

A aplicação pode apresentar dois tipos de erros:

- **An unknown error has occurred!:** algum erro não identificado na api utilizada.
- **Device is not connected!:** desconexão ou alta latência de rede, impedindo que o dispositivo acesse a api

<p
  float="left"
>
  <img
    src="images/server_error.png"
    alt="servererror"
    title="Server error"
    width="210"
    height="450"
    border= "1px solid black"
  />
  <img
    src="images/device_not_connected.png"
    alt="devicenotconnected"
    title="Device not connected"
    width="210"
    height="450"
    border= "1px solid black"
  />
</p>

Abaixo da figura e de sua respectiva mensagem tem um botão chamando **Try again**, permitindo que o usuário tente realizar uma nova busca dos dados, sem a necessidade de reiniciar o aplicativo.

## API de consulta

<https://coronavirus-tracker-api.herokuapp.com>
