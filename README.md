# NinjaCam 0.6

Native Android camera app using Kotlin + CameraX.

## Build
GitHub Actions is included at `.github/workflows/build.yml`.

1. Create a GitHub repository.
2. Upload this project.
3. Push to `main` or run the workflow manually.
4. Download the `NinjaCam-debug` artifact.
5. Extract the ZIP and install `app-debug.apk`.

## Included
- 10-second loading screen
- Camera preview
- Photo capture
- Video recording with audio permission
- Front/back switching
- Smooth pinch zoom + slider
- Hardware-aware quick zoom buttons
- Flash Auto/On/Off
- HDR UI state
- Timer 3/5 sec
- Night / Astro / Pro / Live Photo modes as structured feature entry points
- Grid toggle
- 4:3 / 16:9 / Full ratio UI
- 1080p/720p quality selection where supported
- Tap-to-focus ring
- Glossy white glass controls
- Ninja Auto capability-aware zoom controls
- Gallery save through MediaStore

## Important
The Realme Note 50 does not have a true ultrawide rear camera, so NinjaCam does not force a fake 0.5x button.