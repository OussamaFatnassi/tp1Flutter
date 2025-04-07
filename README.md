# Reponses questions

// 1. Pourquoi utiliser un factory constructor ?
// - Le contructor Factory sert à créer une instance d'une classe sans avoir à instancier la classe elle-même.
// 2. Pourquoi utiliser notifyListeners()
// - notifyListeners() est utilisé pour notifier les classes que il y a eu un changement
// 3. Que se passe-t-il si on oublie notifyListeners() ?
// - Si on oublie de notifier les listeners, les widgets qui écoutent les changements ne seront pas mis à jour et resteront dans leur état précédent.
// 4. Quelle est la responsabilité du ViewModel dans MVVM ?
// - Exposer les données du Model dans un format adapté à l'affichage (View)
