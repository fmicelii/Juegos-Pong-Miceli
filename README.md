# 🏓 Pong — TP1 Videojuegos

> **Materia:** Videojuegos · **Curso:** 4° C S.T.C. · **Institución:** Instituto Politécnico Modelo

Clon del clásico arcade **Pong** desarrollado en **Godot 4.6** con **GDScript** como trabajo práctico de la materia Videojuegos.

---

## � Estética

La versión **versionFallout** cuenta con una identidad visual y sonora completamente personalizada, inspirada en la estética de la saga **Fallout**: paleta de colores con verdes fosforescentes, tipografía retro terminal y una atmósfera post-apocalíptica.

Todos los assets gráficos (sprites de la pelota, paletas, paredes y línea central) fueron **creados y diseñados por el autor** del proyecto.

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
├── assets/               # Sprites y fuentes del juego (creados por el autor)
│   ├── ball.png              # Pelota
│   ├── paddle.png            # Paleta de los jugadores
│   ├── wall-horizontal.png   # Paredes superior e inferior
│   ├── wall-vertical.png     # Paredes laterales
│   ├── middle-line.png       # Línea central
│   └── alarm clock.ttf       # Fuente del marcador
├── musica/               # Sonidos y música inspirados en Fallout
│   ├── soundtrackRockIngles.mp3  # Música de fondo
│   ├── falloutXp.mp3             # Sonido al anotar un gol
│   ├── falloutSelection.mp3      # Sonido de navegación en menú
│   ├── falloutLock.mp3           # Efecto de sonido
│   └── fahh.mp3                  # Efecto de sonido
├── jugador_1/            # Escena y script del Jugador 1 (humano)
├── jugador_2/            # Escena y script del Jugador 2 (CPU)
├── pelota/               # Escena y script de la pelota
├── pong/                 # Escena principal + lógica de puntuación
├── menu/                 # Menú principal y pantalla de opciones
└── project.godot         # Configuración del proyecto Godot
```

---

## ▶️ Cómo abrir el proyecto

1. Descargá e instalá **[Godot 4.6](https://godotengine.org/download/)**.
2. Cloná o descargá este repositorio.
3. Abrí Godot, hacé clic en **"Importar"** y seleccioná el archivo `project.godot`.
4. Presioná **F5** (o el botón ▶️) para ejecutar el juego.

---

## 👤 Autor

**F. Miceli** — 4° C S.T.C., Instituto Politécnico Modelo  
Trabajo Práctico N°1 — Materia: Videojuegos

## 👨‍🏫 Profesor

**Santiago Beitia**
