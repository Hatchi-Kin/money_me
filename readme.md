# Plateforme de Dons - Money me

## Webb app construite avec:

- Python / Flask pour le back
- Le mini framework w3.css pour le front
- MySQL pour le stockage des données

## requirements

Le fichier SQL se trouve dans le repertoire `static/`.
```
pip install -r requirements.txt
```
puis lancez le script avec
```
python main.py
```

## Architecture du Projet

Le projet est structuré de la manière suivante :

- `main.py` : Le fichier principal de l'application Flask.
- `app/` : Le répertoire contenant les classes de gestion des données (connexion à la base de données et opérations CRUD).
- `templates/` : Le répertoire contenant les templates HTML pour les différentes pages de l'application.
- `static/` : Le répertoire contenant les fichiers statiques (CSS, images, SQL, etc.).
- `requirements.txt` : Le fichier contenant la liste des dépendances Python requises pour le projet.

## Auteur

Hatchi-Kin
https://github.com/Hatchi-Kin

## Licence

Ce projet est sous licence MIT. Vous pouvez consulter le fichier [LICENSE](LICENSE) pour plus de détails.

## Remarque

Ce projet a été réalisé à des fins éducatives dans le cadre de l'apprentissage de Flask et de la création d'une application web simple de plateforme de dons. Il peut être amélioré en ajoutant des fonctionnalités supplémentaires telles que la gestion des erreurs, l'authentification des utilisateurs, etc.

N'hésitez pas à contribuer en ouvrant des issues ou en proposant des pull requests pour améliorer ce projet !
