# Deploy Hub-Layer node Oasys on Akash Network
# Развертка Hub-Layer ноды Oasys в Akash Network 
<div align="center">

![pba](https://user-images.githubusercontent.com/23629420/163564929-166f6a01-a6e2-4412-a4e9-40e54c821f05.png)
| [Akash Network](https://akash.network/) | [Forum Akash Network](https://forum.akash.network/) | 
|:--:|:--:|
___
Before you start - subscribe to our news channels: 

Прежде чем начать - подпишитесь на наши новостные каналы:

| [Discord Akash](https://discord.gg/3SNdg3BS) | [Telegram Akash EN](https://t.me/AkashNW) | [Telegram Akash RU](https://t.me/akash_ru) | [TwitterAkash](https://twitter.com/akashnet_) | [TwitterAkashRU](https://twitter.com/akash_ru) |
|:--:|:--:|:--:|:--:|:--:|

</div>
<div align="center">
  
| [Discord Oasys](https://discord.gg/8CSUzxEj) | [Explorer Oasys](https://explorer.testnet.oasys.games/) | [Site Oasys](https://www.oasys.games/) | [Twitter Oasys](https://twitter.com/oasys_games) |
|:--:|:--:|:--:|:--:|
  
</div>
<div align="center">
  
[English version](https://github.com/Dimokus88/ironfish/blob/main/README.md#english-version) | [Русская версия](https://github.com/Dimokus88/ironfish/blob/main/README.md#%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%B0%D1%8F-%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D1%8F)
  
</div>

___
# English-version

## 1. Create wallet

Create new wallet ```ethereum``` (example, to help [MyCrypto](https://app.mycrypto.com/download-desktop-app)). Save ```keystore``` file wallet and save password of him.

Copy ```keystore``` file  to ```Google``` drive and open access to file , copy link for download, for example:

```https://drive.google.com/open?id=xxxxxxxxxxxxxx-xxxxxxxxxxxx&authuser=gmail%40gmail.com&usp=drive_fs```

  you need part of: ```id=xxxxxxxxxxxxxx-xxxxxxxxxxxx``` and insert in front: ```https://drive.google.com/uc?export=download&```.
 

You will get a link to direct download of the file:

```https://drive.google.com/uc?export=download&id=xxxxxxxxxxxxxx-xxxxxxxxxxxx```

## 2. Deploy Hub-Layer node Oasys on Akash Network 

>You must have more than ***5 AKT*** on your Akash wallet (5 АКТ will be blocked for deployment + transaction gas payment). АКТ can be found on the exchanges Gate, AsendeX, Osmosis . Also in our community[Akash RU](https://t.me/akash_ru) we regularly hold events in which we distribute АКТ.

* Open ***Akashlytics***,if you don't have it installed, then [link for download](https://www.akashlytics.com/deploy).

* We check the presence of a balance  ***(>5АКТ)*** and the presence of an installed certificate.

![image](https://user-images.githubusercontent.com/23629420/165339432-6f053e43-4fa2-4429-8eb7-d2fc66f47c70.png)

* Click ***CREATE DEPLOYMENT***. Select ***Empty*** and copy the contents there [deploy.yml](https://github.com/Dimokus88/oasys/blob/main/deploy.yml) .

## 3. Fill the manifesto file and start the deployment

а) Fill the following variables:
* ```my_root_password``` - password  ```root``` user, for connection to container via ```ssh```.
* ```passwallet```       - Password for create wallet Ethereum
* ```link_wallet```      - Direct link to download the wallet file.

Below, in the ```resources``` field, we set the capacity to be rented. Recommended for IronFish node```6 CPU x 8 GB RAM x 15 GB SSD```.

Click on ```CREATE DEPLOYMENT``` and we are waiting for the appearance of providers with free capacities (BIDS)..

![image](https://user-images.githubusercontent.com/23629420/165608527-da85c84e-edcc-4b15-8843-441d3e76dcb6.png)

We choose the one that suits us in terms of price and equipment. Then we press ```ACCEPT BID```.


б ) In tab ***LOGS->LOGS*** You can view the work of the node:
<div align="center">
  
![image](https://user-images.githubusercontent.com/23629420/170540306-afbf9ba5-2515-4612-a3a4-0ef865303af7.png)

  
</div>

в) In tab  ***SHELL*** You can introduce diagnostic commands: ```sudo -u geth geth attach ipc:/home/geth/.ethereum/geth.ipc```

<div align="center">
  
![image](https://user-images.githubusercontent.com/23629420/170540431-77beaa5c-bbfb-4a59-ad17-b243b561e649.png)
  
</div>

You can read more about Oasys commands on the [official website](https://oasys.gitbook.io/oasys-technical-materials/build/hub-layer-node-build).


## Thank you for choosing Akash Network!
___
# Русская версия

## 1. Создание кошелька

Создаем новый кошелек ```ethereum``` (например, с помощью [MyCrypto](https://app.mycrypto.com/download-desktop-app)). Необходимо сохранить ```keystore``` файл кошелька и запомнить пароль от него.

Разместите keystore файл на ```Google``` диске и откройте доступ к файлу, скопируйте его ссылку, она будет вида:

```https://drive.google.com/open?id=xxxxxxxxxxxxxx-xxxxxxxxxxxx&authuser=gmail%40gmail.com&usp=drive_fs```

 вам нужно взять часть: ```id=xxxxxxxxxxxxxx-xxxxxxxxxxxx``` и вставить перед ней: ```https://drive.google.com/uc?export=download&```.
 
Таким образом, у вас получится ссылка на прямое скачивание файла:

```https://drive.google.com/uc?export=download&id=xxxxxxxxxxxxxx-xxxxxxxxxxxx```

## 2. Разворачиваем Hub-Layer ноду Oasys в Akash Network 

>На вашем кошельке Akash должно быть более ***5 АКТ*** (5 АКТ будут заблокированы на развертывание + оплата газа транзакций). АКТ можно пробрести на биржах Gate, AsendeX, Osmosis . Так же в нашем сообществе [Akash RU](https://t.me/akash_ru) мы регулярно проводим эвенты в которых раздаем АКТ.

* Открываем ***Akashlytics***, если он у вас не установлен - то вот [ссылка на скачивание](https://www.akashlytics.com/deploy).

* Проверяем наличие баланса ***(>5АКТ)*** и наличие установленного сертификата.

![image](https://user-images.githubusercontent.com/23629420/165339432-6f053e43-4fa2-4429-8eb7-d2fc66f47c70.png)

* Нажимаем ***CREATE DEPLOYMENT***. Выбираем ***Empty***(пустой template) и копируем туда содержимое [deploy.yml](https://github.com/Dimokus88/oasys/blob/main/deploy.yml) .

## 3. Заполняем файл манифеста и запускаем развертывание

а) Заполняете следующие переменные:
* ```my_root_password``` - пароль ```root``` пользователя, для подключения к контейнеру по ```ssh```.
* ```passwallet```       - Пароль от созаднного кошелька Ethereum
* ```link_wallet```      - Прямая ссылка на скачивание файла кошелька.

Ниже, в поле ```resources``` мы выставляем арендуюмую мощность. для ноды Hub-Layer ноды Oasys рекомендуется ```4 CPU x 8 GB RAM x 100 GB SSD```.

Нажимаем кнопку ```CREATE DEPLOYMENT``` и ждем появления провайдеров, со свободными мощностями (BIDS).

![image](https://user-images.githubusercontent.com/23629420/165608527-da85c84e-edcc-4b15-8843-441d3e76dcb6.png)

Выбираем подходящий для нас по цене и оборудованию. После чего нажимаем ```ACCEPT BID```.

б )Во вкладке ***LOGS->LOGS*** можете наблюдать за работой ноды:
<div align="center">
  
![image](https://user-images.githubusercontent.com/23629420/170540306-afbf9ba5-2515-4612-a3a4-0ef865303af7.png)

  
</div>

в) Во вкладке ***SHELL*** можете вводить диагностические команды: ```sudo -u geth geth attach ipc:/home/geth/.ethereum/geth.ipc```

<div align="center">
  
![image](https://user-images.githubusercontent.com/23629420/170540431-77beaa5c-bbfb-4a59-ad17-b243b561e649.png)
  
</div>

Более подробно о командах в Oasys можно прочитать на [официальном сайте](https://oasys.gitbook.io/oasys-technical-materials/build/hub-layer-node-build).

## Спасибо что используете Akash Network!
