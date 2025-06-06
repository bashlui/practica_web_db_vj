# Web App with Unity Game

Este proyecto contiene una aplicación web simple con un login que redirecciona a un juego Unity WebGL.

## Instrucciones para iniciar el proyecto

### 1. Iniciar el servidor API (opcional)

```bash
cd api
npm run test
```

### 2. Iniciar el servidor Frontend

```bash
cd frontend
npx serve -s public
```

### 3. Acceder al juego

1. Abre tu navegador y ve a http://localhost:3000
2. Ingresa cualquier usuario y contraseña
3. Haz clic en Login para ir directamente al juego Unity

## Estructura del proyecto

- `api/`: Contiene el servidor API (opcional)
- `frontend/`: Contiene la aplicación web
  - `public/`: Archivos públicos del frontend
    - `index.html`: Página de login
    - `unity/`: Contiene el juego Unity WebGL
- `unity/`: Archivos originales del juego Unity

