# IMERSÃO — Convite + Inscrição

Site one-page do evento **IMERSÃO** (Semana Jovem · Santos Dumont I, 26 a 31/07 · 19h30).

Arquivo único e estático: todo o site vive em `index.html` (HTML + CSS + JS + imagens embutidas). Sem build, sem dependências.

## Funcionalidades

- **Inscrição** (nome + WhatsApp) enviada via POST para webhook do n8n:
  `https://n8n.iaju.shop/webhook/f06f4092-5e75-4aa4-b8ae-b4ebdbc2c8cf`
  Payload: `{ "nome": string, "whatsapp": string, "dataHoraEnvio": ISO 8601 }`
  Cópia local em `localStorage` (chave `imersao-inscricoes`) como fallback.
- **Áudio ambiente** (mar + drone de suspense) gerado por Web Audio — sem arquivos de áudio. Inicia no primeiro toque (política de autoplay); botão no canto inferior esquerdo silencia.
- **Animações de scroll**: parallax de "mergulho" no hero, profundímetro (HUD −0m → −42m), véu que escurece na descida e clareia no rodapé, reveal progressivo do conteúdo. `prefers-reduced-motion` respeitado.

## Deploy (EasyPanel ou qualquer host estático)

É só servir a pasta como site estático — `index.html` na raiz.

- **EasyPanel**: criar app de site estático apontando pra este repositório; sem comando de build; diretório de publicação = raiz (`/`).
- **Nginx/Caddy/Vercel/Netlify**: idem, servir a raiz.

## Desenvolvimento local

Qualquer servidor estático serve. Ex.:

```
npx serve .
```
