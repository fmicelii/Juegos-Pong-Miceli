# 🏓 Pong — TP1 Videojuegos

> **Materia:** Videojuegos · **Curso:** 4° C S.T.C. · **Institución:** Instituto Politécnico Modelo

Clon del clásico arcade **Pong** desarrollado en **Godot 4.6** con **GDScript** como trabajo práctico de la materia Videojuegos.

---

## 🎮 ¿Cómo se juega?

Es un juego de 2 "equipos": un jugador humano contra la CPU.  
El objetivo es meter la pelota en el arco del oponente.  
El primer jugador que anote gana el punto y la pelota se reinicia al centro.

### Controles

| Acción | Tecla |
|--------|-------|
| Mover paleta **arriba** | ⬆️ Flecha Arriba |
| Mover paleta **abajo** | ⬇️ Flecha Abajo |

> **Jugador 2** es controlado por la CPU: su paleta sigue automáticamente la posición vertical de la pelota.

---

## 🖥️ Tecnologías utilizadas

| Tecnología | Versión |
|------------|---------|
| [Godot Engine](https://godotengine.org/) | 4.6 |
| GDScript | — |
| Resolución | 1280 × 720 px |

---

## 📁 Estructura del proyecto

```
Juegos-Pong-Miceli/
├── assets/               # Sprites, fuentes y texturas del juego
│   ├── ball.png              # Pelota
│   ├── paddle-blue.png       # Paleta del Jugador 1 (azul)
│   ├── paddle-red.png        # Paleta del Jugador 2 / CPU (roja)
│   ├── wall-horizontal.png   # Paredes superior e inferior
│   ├── wall-vertical.png     # Paredes laterales
│   ├── middle-line.png       # Línea central
│   └── alarm clock.ttf       # Fuente del marcador
├── jugador_1/            # Escena y script del Jugador 1 (humano)
├── jugador_2/            # Escena y script del Jugador 2 (CPU)
├── pelota/               # Escena y script de la pelota
├── pong/                 # Escena principal + lógica de puntuación
└── project.godot         # Configuración del proyecto Godot
```

---

## ▶️ Cómo abrir el proyecto

1. Descargá e instalá **[Godot 4.6](https://godotengine.org/download/)**.
2. Cloná o descargá este repositorio.
3. Abrí Godot, hacé clic en **"Importar"** y seleccioná el archivo `project.godot`.
4. Presioná **F5** (o el botón ▶️) para ejecutar el juego.

---

## 🎨 Créditos de assets

Los assets gráficos y la fuente utilizados en este proyecto fueron obtenidos del repositorio:

> **[indierama/PongTutorial](https://github.com/indierama/PongTutorial/blob/main/assets.zip)**

No son de autoría propia; se usaron con fines educativos dentro del marco del trabajo práctico.

---

## 👤 Autor

**F. Miceli** — 4° C S.T.C., Instituto Politécnico Modelo  
Trabajo Práctico N°1 — Materia: Videojuegos
