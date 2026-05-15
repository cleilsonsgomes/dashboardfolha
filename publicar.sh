#!/bin/bash
# Copia o HTML atualizado e publica no GitHub Pages
set -e

SRC="/Users/cleilsongomes/e-transparencia/dashboard-folha.html"
DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$SRC" "$DIR/index.html"
cd "$DIR"
git add index.html
git commit -m "Atualização: $(date '+%d/%m/%Y %H:%M')" 2>/dev/null || echo "Sem alterações para publicar."
git push origin main
echo "✓ Publicado! Acesse: https://cleilsonsgomes.github.io/dashboard-folha"
