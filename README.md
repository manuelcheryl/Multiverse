# Multiverse

Aplicación destinada a registrar y consultar personajes pertenecientes a diferentes universos ficticios (anime, películas, videojuegos y cómics), permitiendo gestionar universos, personajes, poderes y su nivel de peligrosidad.

## Funcionalidades principales
- Registrar universos, personajes y poderes.
- Asociar personajes a un universo y poderes a personajes.
- Consultar personajes por universo.
- Consultar los poderes de un personaje.
- Consultar qué personajes poseen determinado poder.
- Consultar los personajes según su nivel de peligrosidad.

## Modelo de datos
- **UNIVERSO** (`id_universo` PK, `nombre`, `tipo`) — relación `1:N` con `PERSONAJE`.
- **PERSONAJE** (`id_personaje` PK, `nombre`, `descripcion`, `nivel_peligrosidad`, `id_universo` FK).
- **PODER** (`id_poder` PK, `nombre`, `descripcion`) — relación `N:M` con `PERSONAJE`.
- **PERSONAJE_PODER** (`id_personaje` PK/FK, `id_poder` PK/FK) — tabla intermedia para la relación muchos a muchos.

## Arquitectura del backend
Organizada por capas para separar responsabilidades:
- **Controller**: recibe las solicitudes HTTP y devuelve las respuestas.
- **Service**: concentra las reglas de negocio y validaciones.
- **Repository**: gestiona el acceso y las consultas a la base de datos.

### Endpoints principales
- `GET /api/universos` — Obtener todos los universos
- `GET /api/universos/{id}/personajes` — Obtener los personajes de un universo (implementado)
- `POST /api/universos` — Crear un universo
- `GET /api/personajes` — Obtener todos los personajes
- `GET /api/personajes/{id}` — Obtener un personaje
- `POST /api/personajes` — Crear un personaje
- `PUT /api/personajes/{id}` — Modificar un personaje
- `DELETE /api/personajes/{id}` — Eliminar un personaje
- `GET /api/personajes/{id}/poderes` — Obtener los poderes de un personaje
- `GET /api/poderes` — Obtener todos los poderes
- `POST /api/poderes` — Crear un poder
- `GET /api/poderes/{id}/personajes` — Obtener personajes que tienen un poder
- `POST /api/personajes/{id}/poderes/{idPoder}` — Asociar un poder a un personaje
- `DELETE /api/personajes/{id}/poderes/{idPoder}` — Quitar un poder de un personaje
