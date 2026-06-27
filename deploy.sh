#!/bin/bash
# ============================================================
# GESLOC97 — Script de déploiement GitHub Pages
# Usage: ./deploy.sh "message de commit"
# ============================================================

MSG=${1:-"Mise à jour GESLOC97"}

# Synchroniser index.html avec GESLOC97.html
cp GESLOC97.html index.html

# Git
git add -A
git commit -m "$MSG"
git push origin main

echo ""
echo "✓ Déployé — votre site sera disponible dans 1 à 2 minutes"
echo "  → https://$(git remote get-url origin | sed 's/.*github.com[:/]\([^/]*\)\/\([^.]*\).*/\1.github.io\/\2/')"
