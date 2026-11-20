# Diseño del Backend — Multiverse

## Arquitectura en capas
```text
Frontend -> Controller -> Service -> Repository -> Base de datos
```

- **Controller**: Recibe las solicitudes HTTP provenientes del frontend y devuelve las respuestas.
- **Service**: Contiene las reglas de negocio y validaciones (ej. verificar que el universo exista, controlar campos vacíos, rango de peligrosidad y asociaciones duplicadas).
- **Repository**: Se encarga de acceder y consultar los datos almacenados en la base de datos.

## Funcionalidad inicial implementada
- `GET /api/universos/{id}/personajes`
- Devuelve en formato JSON todos los personajes pertenecientes al universo indicado (`200 OK`), o informa si el universo solicitado no existe.
