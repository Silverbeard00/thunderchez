(define-sdl-func int sdl-get-num-video-drivers () "SDL_GetNumVideoDrivers")
(define-sdl-func string sdl-get-video-driver ((index int)) "SDL_GetVideoDriver")
(define-sdl-func int sdl-video-init ((driver_name string)) "SDL_VideoInit")
(define-sdl-func void sdl-video-quit () "SDL_VideoQuit")
(define-sdl-func string sdl-get-current-video-driver () "SDL_GetCurrentVideoDriver")
(define-sdl-func int sdl-get-num-video-displays () "SDL_GetNumVideoDisplays")
(define-sdl-func string sdl-get-display-name ((displayIndex int)) "SDL_GetDisplayName")
(define-sdl-func int sdl-get-display-bounds ((displayIndex int) (rect (* sdl-rect-t))) "SDL_GetDisplayBounds")
(define-sdl-func int sdl-get-display-dpi ((displayIndex int) (ddpi (* float)) (hdpi (* float)) (vdpi (* float))) "SDL_GetDisplayDPI")
(define-sdl-func int sdl-get-display-usable-bounds ((displayIndex int) (rect (* sdl-rect-t))) "SDL_GetDisplayUsableBounds")
(define-sdl-func int sdl-get-num-display-modes ((displayIndex int)) "SDL_GetNumDisplayModes")
(define-sdl-func int sdl-get-display-mode ((displayIndex int) (modeIndex int) (mode (* sdl-display-mode-t))) "SDL_GetDisplayMode")
(define-sdl-func int sdl-get-desktop-display-mode ((displayIndex int) (mode (* sdl-display-mode-t))) "SDL_GetDesktopDisplayMode")
(define-sdl-func int sdl-get-current-display-mode ((displayIndex int) (mode (* sdl-display-mode-t))) "SDL_GetCurrentDisplayMode")
(define-sdl-func (* sdl-display-mode-t) sdl-get-closest-display-mode ((displayIndex int) (mode (* sdl-display-mode-t)) (closest (* sdl-display-mode-t))) "SDL_GetClosestDisplayMode")
(define-sdl-func int sdl-get-window-display-index ((window (* sdl-window-t))) "SDL_GetWindowDisplayIndex")
(define-sdl-func int sdl-set-window-display-mode ((window (* sdl-window-t)) (mode (* sdl-display-mode-t))) "SDL_SetWindowDisplayMode")
(define-sdl-func int sdl-get-window-display-mode ((window (* sdl-window-t)) (mode (* sdl-display-mode-t))) "SDL_GetWindowDisplayMode")
(define-sdl-func uint32 sdl-get-window-pixel-format ((window (* sdl-window-t))) "SDL_GetWindowPixelFormat")
(define-sdl-func (* sdl-window-t) sdl-create-window ((title string) (x int) (y int) (w int) (h int) (flags uint32)) "SDL_CreateWindow")
(define-sdl-func (* sdl-window-t) sdl-create-window-from ((data void*)) "SDL_CreateWindowFrom")
(define-sdl-func uint32 sdl-get-window-id ((window (* sdl-window-t))) "SDL_GetWindowID")
(define-sdl-func (* sdl-window-t) sdl-get-window-from-id ((id uint32)) "SDL_GetWindowFromID")
(define-sdl-func uint32 sdl-get-window-flags ((window (* sdl-window-t))) "SDL_GetWindowFlags")
(define-sdl-func void sdl-set-window-title ((window (* sdl-window-t)) (title string)) "SDL_SetWindowTitle")
(define-sdl-func string sdl-get-window-title ((window (* sdl-window-t))) "SDL_GetWindowTitle")
(define-sdl-func void sdl-set-window-icon ((window (* sdl-window-t)) (icon (* sdl-surface-t))) "SDL_SetWindowIcon")
(define-sdl-func void* sdl-set-window-data ((window (* sdl-window-t)) (name string) (userdata void*)) "SDL_SetWindowData")
(define-sdl-func void* sdl-get-window-data ((window (* sdl-window-t)) (name string)) "SDL_GetWindowData")
(define-sdl-func void sdl-set-window-position ((window (* sdl-window-t)) (x int) (y int)) "SDL_SetWindowPosition")
(define-sdl-func void sdl-get-window-position ((window (* sdl-window-t)) (x (* int)) (y (* int))) "SDL_GetWindowPosition")
(define-sdl-func void sdl-set-window-size ((window (* sdl-window-t)) (w int) (h int)) "SDL_SetWindowSize")
(define-sdl-func void sdl-get-window-size ((window (* sdl-window-t)) (w (* int)) (h (* int))) "SDL_GetWindowSize")
(define-sdl-func int sdl-get-window-borders-size ((window (* sdl-window-t)) (top (* int)) (left (* int)) (bottom (* int)) (right (* int))) "SDL_GetWindowBordersSize")
(define-sdl-func void sdl-set-window-minimum-size ((window (* sdl-window-t)) (min_w int) (min_h int)) "SDL_SetWindowMinimumSize")
(define-sdl-func void sdl-get-window-minimum-size ((window (* sdl-window-t)) (w (* int)) (h (* int))) "SDL_GetWindowMinimumSize")
(define-sdl-func void sdl-set-window-maximum-size ((window (* sdl-window-t)) (max_w int) (max_h int)) "SDL_SetWindowMaximumSize")
(define-sdl-func void sdl-get-window-maximum-size ((window (* sdl-window-t)) (w (* int)) (h (* int))) "SDL_GetWindowMaximumSize")
(define-sdl-func void sdl-set-window-bordered ((window (* sdl-window-t)) (bordered sdl-bool-t)) "SDL_SetWindowBordered")
(define-sdl-func void sdl-set-window-resizable ((window (* sdl-window-t)) (resizable sdl-bool-t)) "SDL_SetWindowResizable")
(define-sdl-func void sdl-show-window ((window (* sdl-window-t))) "SDL_ShowWindow")
(define-sdl-func void sdl-hide-window ((window (* sdl-window-t))) "SDL_HideWindow")
(define-sdl-func void sdl-raise-window ((window (* sdl-window-t))) "SDL_RaiseWindow")
(define-sdl-func void sdl-maximize-window ((window (* sdl-window-t))) "SDL_MaximizeWindow")
(define-sdl-func void sdl-minimize-window ((window (* sdl-window-t))) "SDL_MinimizeWindow")
(define-sdl-func void sdl-restore-window ((window (* sdl-window-t))) "SDL_RestoreWindow")
(define-sdl-func int sdl-set-window-fullscreen ((window (* sdl-window-t)) (flags uint32)) "SDL_SetWindowFullscreen")
(define-sdl-func (* sdl-surface-t) sdl-get-window-surface ((window (* sdl-window-t))) "SDL_GetWindowSurface")
(define-sdl-func int sdl-update-window-surface ((window (* sdl-window-t))) "SDL_UpdateWindowSurface")
(define-sdl-func int sdl-update-window-surface-rects ((window (* sdl-window-t)) (rects (* sdl-rect-t)) (numrects int)) "SDL_UpdateWindowSurfaceRects")
(define-sdl-func void sdl-set-window-grab ((window (* sdl-window-t)) (grabbed sdl-bool-t)) "SDL_SetWindowGrab")
(define-sdl-func sdl-bool-t sdl-get-window-grab ((window (* sdl-window-t))) "SDL_GetWindowGrab")
(define-sdl-func (* sdl-window-t) sdl-get-grabbed-window () "SDL_GetGrabbedWindow")
(define-sdl-func int sdl-set-window-brightness ((window (* sdl-window-t)) (brightness float)) "SDL_SetWindowBrightness")
(define-sdl-func float sdl-get-window-brightness ((window (* sdl-window-t))) "SDL_GetWindowBrightness")
(define-sdl-func int sdl-set-window-opacity ((window (* sdl-window-t)) (opacity float)) "SDL_SetWindowOpacity")
(define-sdl-func int sdl-get-window-opacity ((window (* sdl-window-t)) (out_opacity (* float))) "SDL_GetWindowOpacity")
(define-sdl-func int sdl-set-window-modal-for ((modal_window (* sdl-window-t)) (parent_window (* sdl-window-t))) "SDL_SetWindowModalFor")
(define-sdl-func int sdl-set-window-input-focus ((window (* sdl-window-t))) "SDL_SetWindowInputFocus")
(define-sdl-func int sdl-set-window-gamma-ramp ((window (* sdl-window-t)) (red (* uint16)) (green (* uint16)) (blue (* uint16))) "SDL_SetWindowGammaRamp")
(define-sdl-func int sdl-get-window-gamma-ramp ((window (* sdl-window-t)) (red (* uint16)) (green (* uint16)) (blue (* uint16))) "SDL_GetWindowGammaRamp")
(define-sdl-func int sdl-set-window-hit-test ((window (* sdl-window-t)) (callback sdl-hit-test-t) (callback_data void*)) "SDL_SetWindowHitTest")
(define-sdl-func void sdl-destroy-window ((window (* sdl-window-t))) "SDL_DestroyWindow")
(define-sdl-func sdl-bool-t sdl-is-screen-saver-enabled () "SDL_IsScreenSaverEnabled")
(define-sdl-func void sdl-enable-screen-saver () "SDL_EnableScreenSaver")
(define-sdl-func void sdl-disable-screen-saver () "SDL_DisableScreenSaver")
(define-sdl-func int sdl-gl-load-library ((path string)) "SDL_GL_LoadLibrary")
(define-sdl-func void* sdl-gl-get-proc-address ((proc string)) "SDL_GL_GetProcAddress")
(define-sdl-func void sdl-gl-unload-library () "SDL_GL_UnloadLibrary")
(define-sdl-func sdl-bool-t sdl-gl-extension-supported ((extension string)) "SDL_GL_ExtensionSupported")
(define-sdl-func void sdl-gl-reset-attributes () "SDL_GL_ResetAttributes")
(define-sdl-func int sdl-gl-set-attribute ((attr sdl-gl-attr-t) (value int)) "SDL_GL_SetAttribute")
(define-sdl-func int sdl-gl-get-attribute ((attr sdl-gl-attr-t) (value (* int))) "SDL_GL_GetAttribute")
(define-sdl-func sdl-gl-context-t sdl-gl-create-context ((window (* sdl-window-t))) "SDL_GL_CreateContext")
(define-sdl-func int sdl-gl-make-current ((window (* sdl-window-t)) (context sdl-gl-context-t)) "SDL_GL_MakeCurrent")
(define-sdl-func (* sdl-window-t) sdl-gl-get-current-window () "SDL_GL_GetCurrentWindow")
(define-sdl-func sdl-gl-context-t sdl-gl-get-current-context () "SDL_GL_GetCurrentContext")
(define-sdl-func void sdl-gl-get-drawable-size ((window (* sdl-window-t)) (w (* int)) (h (* int))) "SDL_GL_GetDrawableSize")
(define-sdl-func int sdl-gl-set-swap-interval ((interval int)) "SDL_GL_SetSwapInterval")
(define-sdl-func int sdl-gl-get-swap-interval () "SDL_GL_GetSwapInterval")
(define-sdl-func void sdl-gl-swap-window ((window (* sdl-window-t))) "SDL_GL_SwapWindow")
(define-sdl-func void sdl-gl-delete-context ((context sdl-gl-context-t)) "SDL_GL_DeleteContext")
