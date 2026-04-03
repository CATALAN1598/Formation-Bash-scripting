# Formation Bash Scripting

## Introduction

Formation sur le Bash scripting. 

J'ai écris cette formation pour apprendre à de jeune administrateur l'utilisation des scripts shell pour automatiser des tâches.

Je présente également les bonnes pratiques et les choses à éviter afin d'écrire des scripts pour des environnement de production.

Cette formation s'adresse à un public débutant jusqu'à confirmé.

### Les chapitres de la formation

- Un Shell et le Scripting
- Les variables
- Les arguments d'un script
- Les opérations conditionnelles
- Les opérations mathématiques
- Les fonctions

## Le dépot

### La formation

Le support de la formation est proposé au format site web hébergé dans un Docker disponible à l'adresse suivante: [Site de la formation](http://).

#### Build votre propre image

- formation/site:
  
  Contient les éléments du site web
  
- formation/conf:
  
  Contient le fichier de configuration du nginx qui sert le site web
  
- Dockerfile:
  
  Permet de générer votre propre image du site de formation pour l'héberger vous même


Vous devez avoir un accès internet et download l'image du docker Nginx

```
$ docker build -t formation-site .
```

#### Lancer votre conteneur docker

Une fois l'image de la formation créée vous devez **run** un docker avec votre image nouvellement **build**

```
$ docker run --name formation -p 80:80 -d formation-site:latest
```

#### Accès au site WEB

Une fois le docker démarré vous accédez au site web à l'adresse:

http://localhost

### Les scripts

Tous les scripts de la formation sont disponible dans le répertoire **script**
```
script
    ├── Arguments
    │   ├── argument_1.sh
    │   ├── argument_2.sh
    │   ├── argument_3.sh
    │   └── logs.txt
    ├── cartouche.sh
    ├── Fonction
    │   ├── execution
    │   │   └── exec_1.sh
    │   ├── fonction_1.sh
    │   ├── fonction_2.sh
    │   ├── fonction_3.sh
    │   └── fonction_4.sh
    ├── Opération_conditionnelle
    │   ├── case
    │   │   ├── case_1.sh
    │   │   └── case_2.sh
    │   ├── for
    │   │   ├── for_1.sh
    │   │   └── for_2.sh
    │   ├── if
    │   │   ├── if_1.sh
    │   │   ├── if_2.sh
    │   │   ├── if_3.sh
    │   │   └── if_4.sh
    │   └── while
    │       ├── file.txt
    │       ├── while_1.sh
    │       ├── while_2.sh
    │       └── while_3.sh
    ├── Opération_math
    │   ├── math_1.sh
    │   ├── math_2.sh
    │   ├── math_3.sh
    │   ├── math_4.sh
    │   └── test.txt
    └── Variables
        ├── list
        ├── variable_1.sh
        ├── variable_2.sh
        ├── variable_3.sh
        ├── variable_4.sh
        ├── variable_5.sh
        ├── variable_6.sh
        ├── variable_7.sh
        ├── variable_8.sh
        └── variable_9.sh
```



