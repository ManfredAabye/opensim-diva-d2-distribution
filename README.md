# opensim-diva-d2-distribution
### Es gibt leider noch Probleme, dies ist eine vorab Version.


### Übersicht der Skripte

1. **`01DivaSource.bat`**: Vorbereitung der Quellen und Kopieren der notwendigen Dateien.
2. **`02DivaPrebuild.bat`**: Erstellt die Prebuild-Datei und bereinigt temporäre Verzeichnisse.
3. **`03DivaCompile.bat`**: Kompiliert das OpenSim-Projekt in der Release-Konfiguration.
4. **`04DivaPaketBuilder.bat`**: Führt die Prebuild-, Compile- und Distribution-Skripte aus und verpackt das Ergebnis in ein ZIP-Archiv.

### Schritt-für-Schritt-Anleitung

#### Schritt 1: Vorbereitung der Quellen

1. **`01DivaSource.bat` ausführen**:
   - Öffne die Eingabeaufforderung (cmd.exe).
   - Navigiere zu dem Verzeichnis, in dem sich die `01DivaSource.bat`-Datei befindet.
   - Führe das Skript aus:
     ```shell
     01DivaSource.bat
     ```
   - Dieses Skript klont die notwendigen Git-Repositories und kopiert die erforderlichen Dateien in die entsprechenden Verzeichnisse.

#### Schritt 2: Prebuild-Prozess

1. **`02DivaPrebuild.bat` ausführen**:
   - Öffne die Eingabeaufforderung (cmd.exe).
   - Navigiere zu dem Verzeichnis, in dem sich die `02DivaPrebuild.bat`-Datei befindet.
   - Führe das Skript aus:
     ```shell
     02DivaPrebuild.bat
     ```
   - Dieses Skript kopiert die erforderliche DLL-Datei, führt das Prebuild-Kommando aus und bereinigt temporäre Verzeichnisse.

#### Schritt 3: Kompilierung

1. **`03DivaCompile.bat` ausführen**:
   - Öffne die Eingabeaufforderung (cmd.exe).
   - Navigiere zu dem Verzeichnis, in dem sich die `03DivaCompile.bat`-Datei befindet.
   - Führe das Skript aus:
     ```shell
     03DivaCompile.bat
     ```
   - Dieses Skript kompiliert das OpenSim-Projekt in der Release-Konfiguration.

#### Schritt 4: Komplettes Paketbuilding

1. **`04DivaPaketBuilder.bat` ausführen**:
   - Öffne die Eingabeaufforderung (cmd.exe).
   - Navigiere zu dem Verzeichnis, in dem sich die `04DivaPaketBuilder.bat`-Datei befindet.
   - Führe das Skript aus:
     ```shell
     04DivaPaketBuilder.bat
     ```
   - Dieses Skript führt die Prebuild-, Compile- und Distribution-Skripte aus und verpackt das Ergebnis in ein ZIP-Archiv.

### Hinweise

- Stelle sicher, dass alle notwendigen Verzeichnisse und Dateien vorhanden sind.
- Überprüfe, dass 7-Zip installiert ist und sich im angegebenen Pfad `C:\Program Files\7-Zip\7z.exe` befindet.
- Wenn du zusätzliche Hilfe benötigst, lass es mich wissen!

