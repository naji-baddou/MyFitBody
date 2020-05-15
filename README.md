# PerfectBody

> Angular and .NET ont la magie de faire des applications extraordinaires, ce sont les frameworks qui on a utilisé pour construire cette application.  

> ![Home](https://user-images.githubusercontent.com/47454305/82016078-baef4280-966f-11ea-8642-d709682b42c8.jpg)

## Pour commencer
PerfectBody est une application diététique qui propose des régimes et aussi des exercices selon les informations personnelles d’utilisateur à partir d’un formulaire d’inscription. L'objectif de l'application c'es d'offrir un meilleur service, pour aider le maximum des personnes d'être en forme et avoir une bonne santé.

>![6ce9c0b4-f350-4265-b7c1-c93400a57e50](https://user-images.githubusercontent.com/47454305/82015935-6c41a880-966f-11ea-8c2a-7d0b4000bdc1.jpg)
>![efc7467d-b9b9-474c-9ba4-a74fa3d84633](https://user-images.githubusercontent.com/47454305/82016089-be82c980-966f-11ea-92a4-02668b669ecb.jpg)
>![321243ed-269b-4694-a4ba-03593452c897](https://user-images.githubusercontent.com/47454305/82016096-c3e01400-966f-11ea-8e86-221d7a3654d5.jpg)
>![f39e0433-5173-4e2f-bb79-3ee1ad2f8bff](https://user-images.githubusercontent.com/47454305/82016187-f7bb3980-966f-11ea-8dbc-b7b2b7a80689.jpg)

## Prerequisites
Assurez-vous de l’avoir installé avant de poursuivre
- Node 12.13.0,  
- npm 6.12.0,   
- Angular-cli 8.3.21

## Technology Stack
Component         | Technology
---               | ---
Frontend          | [Angular 8]
Backend (REST)    | [.NET](C#)
Security          | Token Based (Spring Security and [JWT])
Client Build Tools| [angular-cli], Webpack, npm

## À propos
Le but du projet est de:

  Valider les deux copétences de création et de sécurisation d'une API RESTfull;
  Comment consommer une API RESTfull.


## Struclure des dossiers
```bash
PROJECT_FOLDER
│  README.md          
│  MyFitBodyDb.sql
└──[PerfectBody]
   └──[PerfectBody]
   |  └──[Controllers]
   |  └──[Models]
   |  └──[Views]
   |     |   Web.config
   |     |   _ViewStart.cshtml
   |     └──[Home]
   |     └──[Shared]
   |        |   Error.cshtml
   |        |   _Layout.cshtml
   └──[frontAngular]
      └──[src]
         └──[environments]
         └──[assets]
         └──[app]
            └──[accueil]
            └──[ajouter-coach]
            └──[ajouter-exercice]
            └──[ajouter-repas]
            └──[ajouter-specnutrition]
            └──[conditions-perfectbody]
            └──[creat-accont]
            └──[detail-exercices]
            └──[detail-repas]
            └──[error]
            └──[home]
            └──[list-coach]
            └──[list-specnutrition]
            └──[list-users]
            └──[liste-exercices]
            └──[liste-repas]
            └──login]
            └──[que-somme-nous]
            └──[shared]



```

## Fabriquer avec:
  Nous avons utilisé les logiciels suivants:

  * [Visual Studio 2017](https://www.01net.com/telecharger/windows/Programmation/creation/fiches/140345.html),
  * [Visual Studio code](https://code.visualstudio.com),
  * [SqlDbx](http://www.sqldbx.com/),
  * [Postman](https://www.postman.com),
  * [Edraw](edrawsoft.com/?AFFILIATE=44600&__c=1)

## Auteurs
  Auteurs du projet:

  * [Abdeljabar Elhajji](https://github.com/abdeljabarelhajji)
  * [Naji Baddou](https://github.com/najibaddou233)
  * [Saba Larif](https://github.com/SabaLr)


### Les points à améliorer
* Backend
  * Un traitement qui traité les informations d'un utilisateur à partir d'un formulaire pour donner un resulat sous forme d'un régime et exercices.

* Frontend
  * Login,
  * L'inscription de l'utilisateur,
  * CRUD des repas, exercices, coachs et spécialistes nutrition.

### NB
  Il existe un cahier des charges expliqué toutes ces informations.
