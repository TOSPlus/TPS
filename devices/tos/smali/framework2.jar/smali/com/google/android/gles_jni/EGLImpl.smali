.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "EGLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL10;


# instance fields
.field private mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 159
    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 28
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 29
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    return-void
.end method

.method private native _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)I
.end method

.method private native _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)I
.end method

.method private native _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)I
.end method

.method private native _eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)I
.end method

.method private native _eglGetCurrentContext()I
.end method

.method private native _eglGetCurrentDisplay()I
.end method

.method private native _eglGetCurrentSurface(I)I
.end method

.method private native _eglGetDisplay(Ljava/lang/Object;)I
.end method

.method private static native _nativeClassInit()V
.end method

.method public static native getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I
.end method


# virtual methods
.method public native eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "share_context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p4, "attrib_list"    # [I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)I

    move-result v0

    .line 55
    .local v0, "eglContextId":I
    if-nez v0, :cond_0

    .line 56
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 58
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    goto :goto_0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attrib_list"    # [I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)I

    move-result v0

    .line 63
    .local v0, "eglSurfaceId":I
    if-nez v0, :cond_0

    .line 64
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 66
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    goto :goto_0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 6
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_pixmap"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .prologue
    .line 70
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    .local v1, "sur":Lcom/google/android/gles_jni/EGLSurfaceImpl;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    .line 72
    iget v0, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    if-nez v0, :cond_0

    .line 73
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 75
    .end local v1    # "sur":Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :cond_0
    return-object v1
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 6
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_window"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "sur":Landroid/view/Surface;
    instance-of v4, p3, Landroid/view/SurfaceView;

    if-eqz v4, :cond_1

    move-object v3, p3

    .line 81
    check-cast v3, Landroid/view/SurfaceView;

    .line 82
    .local v3, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 91
    .end local v3    # "surfaceView":Landroid/view/SurfaceView;
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 92
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)I

    move-result v0

    .line 102
    .local v0, "eglSurfaceId":I
    :goto_1
    if-nez v0, :cond_5

    .line 103
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 105
    :goto_2
    return-object v4

    .line 83
    .end local v0    # "eglSurfaceId":I
    :cond_1
    instance-of v4, p3, Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_2

    move-object v1, p3

    .line 84
    check-cast v1, Landroid/view/SurfaceHolder;

    .line 85
    .local v1, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 86
    goto :goto_0

    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    :cond_2
    instance-of v4, p3, Landroid/view/Surface;

    if-eqz v4, :cond_0

    move-object v2, p3

    .line 87
    check-cast v2, Landroid/view/Surface;

    goto :goto_0

    .line 93
    :cond_3
    instance-of v4, p3, Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_4

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)I

    move-result v0

    .restart local v0    # "eglSurfaceId":I
    goto :goto_1

    .line 97
    .end local v0    # "eglSurfaceId":I
    :cond_4
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    .restart local v0    # "eglSurfaceId":I
    :cond_5
    new-instance v4, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v4, v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    goto :goto_2
.end method

.method public native eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()I

    move-result v0

    .line 120
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 121
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit p0

    return-object v1

    .line 123
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    if-eq v1, v0, :cond_1

    .line 124
    new-instance v1, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()I

    move-result v0

    .line 130
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 131
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    monitor-exit p0

    return-object v1

    .line 133
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    if-eq v1, v0, :cond_1

    .line 134
    new-instance v1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .param p1, "readdraw"    # I

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)I

    move-result v0

    .line 140
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 141
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-object v1

    .line 143
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    if-eq v1, v0, :cond_1

    .line 144
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2
    .param p1, "native_display"    # Ljava/lang/Object;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)I

    move-result v0

    .line 110
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 111
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-object v1

    .line 113
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    if-eq v1, v0, :cond_1

    .line 114
    new-instance v1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public native eglGetError()I
.end method

.method public native eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native eglReleaseThread()Z
.end method

.method public native eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native eglWaitGL()Z
.end method

.method public native eglWaitNative(ILjava/lang/Object;)Z
.end method
