# Handbuch zur Verwendung der Diva-Skripte

## Einführung

Die Diva-Skripte helfen dir, verschiedene Aufgaben im Zusammenhang mit der Einrichtung und Verwaltung der Diva-Distribution für OpenSim zu automatisieren. Dieses Handbuch führt dich durch die Verwendung der vier Hauptskripte: `01DivaSource.bat`, `02DivaPrebuild.bat`, `03DivaCompile.bat` und `04DivaPaketBuilder.bat`.

## Überblick über die Skripte

1. **`01DivaSource.bat`**: Dieses Skript klont die notwendigen Git-Repositories und kopiert die erforderlichen Dateien in die entsprechenden Verzeichnisse.
2. **`02DivaPrebuild.bat`**: Dieses Skript erstellt die Prebuild-Dateien und bereinigt temporäre Verzeichnisse.
3. **`03DivaCompile.bat`**: Dieses Skript kompiliert das OpenSim-Projekt und die zugehörigen Tools in der Release-Konfiguration.
4. **`04DivaPaketBuilder.bat`**: Dieses Skript kopiert die kompilierten Dateien und Verzeichnisse, erstellt ein Distributionspaket und komprimiert das Ergebnis in ein ZIP-Archiv.

## Schritt-für-Schritt-Anleitung

### Schritt 1: Vorbereitung der Quellen (`01DivaSource.bat`)

**Verwendung**:
- Öffne die Eingabeaufforderung (cmd.exe).
- Navigiere zu dem Verzeichnis, in dem sich die `01DivaSource.bat`-Datei befindet.
- Führe das Skript aus:
  ```shell
  01DivaSource.bat
  ```

**Beschreibung**:
Dieses Skript klont die notwendigen Git-Repositories und kopiert die erforderlichen Dateien in die entsprechenden Verzeichnisse. Es stellt sicher, dass alle benötigten Add-on-Module und spezifischen Dateien vorhanden sind, um die Diva-Distribution vorzubereiten.

### Schritt 2: Prebuild-Prozess (`02DivaPrebuild.bat`)

**Verwendung**:
- Öffne die Eingabeaufforderung (cmd.exe).
- Navigiere zu dem Verzeichnis, in dem sich die `02DivaPrebuild.bat`-Datei befindet.
- Führe das Skript aus:
  ```shell
  02DivaPrebuild.bat
  ```

**Beschreibung**:
Dieses Skript erstellt die Prebuild-Dateien, die für die Konfiguration des Projekts benötigt werden. Es kopiert die erforderliche DLL-Datei, führt das Prebuild-Kommando aus und bereinigt temporäre Verzeichnisse, um sicherzustellen, dass das Projekt korrekt vorbereitet ist.

### Schritt 3: Kompilierung (`03DivaCompile.bat`)

**Verwendung**:
- Öffne die Eingabeaufforderung (cmd.exe).
- Navigiere zu dem Verzeichnis, in dem sich die `03DivaCompile.bat`-Datei befindet.
- Führe das Skript aus:
  ```shell
  03DivaCompile.bat
  ```

**Beschreibung**:
Dieses Skript kompiliert das OpenSim-Projekt und die zugehörigen Tools in der Release-Konfiguration. Es stellt sicher, dass alle Komponenten korrekt kompiliert sind und bereit für den Einsatz sind.

### Schritt 4: Paketbuilding (`04DivaPaketBuilder.bat`)

**Verwendung**:
- Öffne die Eingabeaufforderung (cmd.exe).
- Navigiere zu dem Verzeichnis, in dem sich die `04DivaPaketBuilder.bat`-Datei befindet.
- Führe das Skript aus:
  ```shell
  04DivaPaketBuilder.bat
  ```

**Beschreibung**:
Dieses Skript kopiert die kompilierten Dateien und Verzeichnisse in ein Zielverzeichnis, erstellt ein Distributionspaket und komprimiert das Ergebnis in ein ZIP-Archiv. Es stellt sicher, dass alle Dateien und Verzeichnisse richtig organisiert und verpackt sind, damit sie leicht verteilt und installiert werden können.

---

### Systemvoraussetzungen für die Verwendung der Diva-Skripte

Um die Diva-Skripte erfolgreich ausführen zu können, solltest du sicherstellen, dass dein System die folgenden Voraussetzungen erfüllt:

#### Betriebssystem:
- **Windows 10** oder 11 (64-Bit)

#### Hardwareanforderungen:
- **Prozessor**: Mindestens ein Dual-Core-Prozessor (empfohlen: Quad-Core-Prozessor oder besser)
- **Arbeitsspeicher (RAM)**: Mindestens 8 GB (empfohlen: 16 GB oder mehr)
- **Festplattenspeicher**: Mindestens 10 GB freier Speicherplatz für die Installation und Ausführung der Skripte

#### Softwareanforderungen:
- **.NET SDK**: Version 8.0
  - Download: [Microsoft .NET](https://dotnet.microsoft.com/download)
- **Git**: Git-Befehlszeilen-Tool zum Klonen der Repositories
  - Download: [Git](https://git-scm.com/downloads)
- **PowerShell**: Eingebaute Komponente in Windows für die Ausführung von PowerShell-Skripten (Version 5.1 oder höher)

#### Zusätzliche Voraussetzungen:
- **Internetverbindung**: Erforderlich zum Klonen der Repositories und Herunterladen von Abhängigkeiten

#### Optionale Software:
- **Visual Studio**: Empfohlen für die Bearbeitung und Kompilierung des Quellcodes (Version 2019 oder höher)
  - Download: [Visual Studio](https://visualstudio.microsoft.com/)

### Zusammenfassung der Schritte zur Vorbereitung:

1. **Installiere .NET SDK**:
   - Lade das .NET SDK von der Microsoft-Website herunter und installiere es.

2. **Installiere Git**:
   - Lade Git von der offiziellen Website herunter und installiere es.

3. **Stelle sicher, dass PowerShell installiert und auf dem neuesten Stand ist**:
   - Überprüfe die PowerShell-Version durch Eingabe von `pwsh -v` in der Eingabeaufforderung.

4. **Software (Visual Studio 22 Comunity)**:
   - Lade Visual Studio herunter und installiere es, falls du den Quellcode bearbeiten und kompilieren möchtest.

---

## TODO
Wifi\Localization fehlt.
