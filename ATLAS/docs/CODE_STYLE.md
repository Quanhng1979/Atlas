# Atlas VBA Code Style

## General

- Option Explicit is required.
- One class = one responsibility.
- Public API first.
- Private helpers last.

## Naming

Classes:
Logger.cls

Interfaces:
ILogger.cls

Modules:
Guard.bas

Enums:
AtlasEnums.bas

Constants:
AtlasConstants.bas

Tests:
LoggerTests.bas

## Error Handling

No MsgBox in Atlas.Core.

Return Result whenever possible.