# Diseño de la Base de Datos — Multiverse

## 1. Entidades
- **UNIVERSO**: `id_universo` (PK), `nombre`, `tipo`
- **PERSONAJE**: `id_personaje` (PK), `nombre`, `descripcion`, `nivel_peligrosidad`, `id_universo` (FK)
- **PODER**: `id_poder` (PK), `nombre`, `descripcion`
- **PERSONAJE_PODER**: `id_personaje` (PK, FK), `id_poder` (PK, FK)

## 2. Relaciones
- **UNIVERSO — PERSONAJE (1:N)**: Un universo puede tener muchos personajes, pero cada personaje pertenece a un único universo.
- **PERSONAJE — PODER (N:M)**: Un personaje puede tener varios poderes y un mismo poder puede estar asociado a diferentes personajes, resuelto mediante la tabla intermedia `PERSONAJE_PODER`.

## 3. Reglas de negocio
1. Cada personaje debe pertenecer a un universo existente.
2. Un universo puede contener varios personajes.
3. Un personaje puede tener varios poderes.
4. Un mismo poder puede estar asociado a diferentes personajes.
5. No se deben guardar varios poderes dentro de un único campo de texto.
6. Los poderes deben almacenarse como entidades independientes.
7. Cada personaje debe tener un nivel de peligrosidad dentro del rango establecido.
8. No debe existir una asociación duplicada entre un mismo personaje y un mismo poder.
9. Las relaciones entre entidades deben utilizar claves primarias y foráneas correspondientes.
