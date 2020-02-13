**By : Fernando, Anouar et Maxime - en team-programming à distance**

# Projet : The Gossip Project, les premières views
**THP s11\
s06j01\
Projet01**

<h3>Introduction</h3>
Nous allons commencer aujourd'hui par créer les premières pages :

- La page d'accueil, bien entendu. Cette page d'accueil affichera tous les potins créés
- La page qui présente l'équipe de The Gossip Project, aka toi et ton binome
- La page de contact où tu vas balancer une superbe adresse de contact
- Une page de bienvenue, qui accueille l'utilisateur en fonction du nom passé dans l'URL

Dans la page d'accueil, il sera possible de cliquer sur chaque potin pour en "Voir plus", ce qui aura pour effet d'aller sur la page du potin.\
Enfin, puisque c'est toi, nous allons mettre du CSS dans le site, grâce notamment à Bootstrap.

<h3>Les bases de l'application : installation et models</h3>
Ce projet te suivra tout au long de cette semaine, mais nous allons te demander de ne pas perdre le rythme des migrations. Ainsi, nous allons te demander de créer une nouvelle application <code>the-gossip-project</code> (avec PostgreSQL), puis d'importer les migrations, models, et seed de l'ancien exercice. Cela permettra de te replonger en douceur dans le bain des bases de données sans te faire perdre trop de temps.

Dans les grandes lignes, voici les fonctionnalités principales de notre application web :

- Une page <code>team</code>, qui présente l'équipe. Elle sera sur l'uri <code>/team</code>
- Une page <code>contact</code>, qui dit comment contacter l'équipe. Elle sera sur l'uri <code>/contact</code>
- Un peu de mise en forme SVP merci (du CSS, un header, des liens)
- URL cachée, la bienvenue ;)
- Page d'accueil : la liste des potins
- Afficher un potin
- Afficher un utilisateur

<h3>Rendu attendu</h3>
Une application <code>the_gossip_project</code> qui affiche quelques pages statiques, un système de landing pages personnalisées, un index et un show de potins. Le tout avec Bootstrap et un header qui a les bons liens.

<h3>Installation et utilisation</h3>

1. ```$ git clone https://github.com/fbrgmn/gossip_project.git```
2. ```$ cd gossip_project```
3. ```$ bundle install```
4. ```$ rails db:create``` # création de la BDD
5. ```$ rails db:migrate``` # préparation des tableaux de la BDD
6. ```$ rails db:seed``` # remplissage de la BDD avec des données
7. ```$ shotgun -p 3000```
8. http://localhost:3000/
9. **Suis ton instinct de navigation !**
