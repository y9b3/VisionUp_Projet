# 🛠️ Contribution - VisionUp

Bienvenue dans le repo de VisionUp ! Voici comment on bosse en équipe de manière claire et efficace. Suis ce guide pour contribuer sans casser le flow du projet ✅

---

## 📚 Branches principales

| Branche  | Rôle                                                                             |
| -------- | -------------------------------------------------------------------------------- |
| `master` | Branche de prod. Toujours stable et déployable                                   |
| `dev`    | Branche d'intégration. Toutes les features passent par ici avant d'aller en prod |

---

## 🚀 Workflow Git

1. Toujours partir de `dev`

```bash
git checkout dev
git pull origin dev
```

2. Créer une branche pour ta feature ou ton bugfix

```bash
git checkout -b feature/nom-de-la-feature
# ou
git checkout -b bugfix/nom-du-bug
```

3. Code, commit, push :

```bash
git add .
git commit -m "feat: ajout de la page d'accueil"
git push -u origin feature/nom-de-la-feature
```

4. Ouvre une Pull Request ➔ vers `dev`

- Utilise le **template de PR**
- Mets `Closes #numéro` si c'est lié à une issue

5. Merge uniquement après review ou test ❌

6. Quand `dev` est stable ➔ faire une PR vers `master` pour release

---

## 💼 Nommer tes branches

| Type        | Prefixe    | Exemple                   |
| ----------- | ---------- | ------------------------- |
| Feature     | `feature/` | `feature/register-client` |
| Bugfix      | `bugfix/`  | `bugfix/fix-login-error`  |
| Hotfix prod | `hotfix/`  | `hotfix/email-validation` |
| Tech        | `chore/`   | `chore/clean-code`        |

---

## ✨ Liens automatiques

Tu peux lier une PR ou un commit à une issue avec :

```md
Closes #4
Fixes #7
```

Quand la PR est mergée, l'issue est fermée automatiquement ✅

---

## 📈 Checklist PR avant merge

- [ ] Code testé
- [ ] Pas de console.log inutile
- [ ] Pas de conflit avec `dev`
- [ ] Template de PR rempli
- [ ] Lien vers issue si besoin

---

Merci pour ta contribution ✨
