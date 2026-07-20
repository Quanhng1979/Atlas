# Atlas Architecture

## Layers

Atlas.App
    ↓
Atlas.UI
    ↓
Atlas.Modules
    ↓
Atlas.Infrastructure
    ↓
Atlas.Core

## Rules

- Dependencies flow downward only.
- Atlas.Core never references Excel objects.
- Infrastructure isolates Excel APIs.
- UI never contains business logic.
- Modules coordinate features.