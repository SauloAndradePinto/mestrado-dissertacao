# Guia de Comandos Git para Atualizar o Repositório

## 📋 Comandos Básicos para Atualizar o Repositório

### 1. Verificar o Status Atual
```bash
cd ~/Mestrado/Dissertação_Saulo
git status
```
Mostra quais arquivos foram modificados, adicionados ou removidos.

---

### 2. Adicionar Arquivos Modificados
```bash
# Adicionar todos os arquivos modificados
git add .

# Ou adicionar arquivos específicos
git add principal.tex estilo.sty
```

---

### 3. Fazer Commit das Alterações
```bash
git commit -m "Descrição das alterações feitas"
```

**Exemplos de mensagens de commit:**
```bash
git commit -m "Atualização do capítulo de metodologia"
git commit -m "Correção de referências bibliográficas"
git commit -m "Adição de novas figuras na seção de resultados"
```

---

### 4. Enviar para o GitHub
```bash
git push
```

---

## 🔄 Fluxo Completo (Comando Único)

```bash
cd ~/Mestrado/Dissertação_Saulo
git add .
git commit -m "Sua mensagem descrevendo as alterações"
git push
```

---

## 📚 Comandos Úteis Adicionais

### Ver Histórico de Commits
```bash
git log --oneline -10
```

### Ver Diferenças Antes de Commitar
```bash
git diff
```

### Desfazer Alterações em um Arquivo (antes de adicionar)
```bash
git checkout -- nome_do_arquivo.tex
```

### Verificar se Há Atualizações no GitHub
```bash
git fetch
git status
```

### Atualizar Repositório Local com Mudanças do GitHub
```bash
git pull
```

---

## 💡 Exemplo Prático

Suponha que você editou `principal.tex` e `estilo.sty`:

```bash
cd ~/Mestrado/Dissertação_Saulo

# Ver o que mudou
git status

# Adicionar os arquivos
git add principal.tex estilo.sty

# Fazer commit
git commit -m "Atualização do documento principal e estilo"

# Enviar para o GitHub
git push
```

---

## 🔗 Informações do Repositório

- **URL do Repositório:** https://github.com/SauloAndradePinto/mestrado-dissertacao
- **Branch Principal:** main
- **Token de Acesso:** Já configurado (não é necessário inserir novamente)

---

## ⚠️ Observações Importantes

1. Sempre use `git status` antes de fazer commit para verificar o que será enviado
2. Escreva mensagens de commit descritivas e claras
3. O token de acesso já está configurado, então `git push` funcionará automaticamente
4. Se houver conflitos, o Git avisará e você precisará resolvê-los antes de fazer push

---

## 🚀 Dica: Criar Alias para Facilitar

Você pode adicionar ao arquivo `~/.bashrc` ou `~/.zshrc`:

```bash
alias git-update='git add . && git commit -m "Update" && git push'
```

Depois, recarregue o terminal e use apenas:
```bash
git-update
```

---

**Gerado em:** $(date)

