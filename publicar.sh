#!/bin/bash
# Publica o painel no GitHub Pages (commit + push do estado atual do repositório).
# Painel principal: index.html (login → Eventos) + dashboard-eventos.html
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

git add index.html dashboard-eventos.html
git commit -m "Atualização: $(date '+%d/%m/%Y %H:%M')" 2>/dev/null || echo "Sem alterações para publicar."
git push origin main
echo "✓ Publicado! Acesse: https://cleilsonsgomes.github.io/dashboard-folha"
