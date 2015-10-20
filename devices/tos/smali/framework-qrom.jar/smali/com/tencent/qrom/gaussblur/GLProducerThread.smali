.class public Lcom/tencent/qrom/gaussblur/GLProducerThread;
.super Ljava/lang/Thread;
.source "GLProducerThread.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CALC_FINISHED:I = 0x1

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field private mQuitThread:Z

.field private mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

.field private mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/content/Context;IILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "shouldRender"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    .line 31
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 32
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 33
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mQuitThread:Z

    .line 43
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-direct {v0, p2}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p3, p4}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setViewport(II)V

    .line 47
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 48
    iput-object p5, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    return-void
.end method

.method private destoryGL()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 135
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 141
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setEnableDraw(Z)V

    .line 147
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Destroy()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    .line 150
    :cond_2
    return-void
.end method

.method private static getConfig()[I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method private initGL()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 67
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 69
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 70
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetdisplay failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 76
    .local v9, "version":[I
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    const/16 v0, 0xf

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 92
    .local v6, "configAttribs":[I
    new-array v5, v4, [I

    .line 93
    .local v5, "numConfigs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 94
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {}, Lcom/tencent/qrom/gaussblur/GLProducerThread;->getConfig()[I

    move-result-object v2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    const/4 v0, 0x3

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    .line 102
    .local v7, "contextAttribs":[I
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v3, v10

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 103
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v3, v10

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v10, 0x0

    invoke-interface {v0, v1, v2, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 104
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_5

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    .line 107
    .local v8, "error":I
    const/16 v0, 0x300b

    if-ne v8, v0, :cond_4

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglCreateWindowSurface failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    .end local v8    # "error":I
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 120
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x3020
        0x20
        0x3021
        0x8
        0x3022
        0x8
        0x3023
        0x8
        0x3024
        0x8
        0x3040
        0x4
        0x3033
        0x4
        0x3038
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLProducerThread;->destoryGL()V

    .line 312
    return-void
.end method

.method public enableGaussionBlurView(Z)V
    .locals 1
    .param p1, "display"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setEnableDraw(Z)V

    .line 186
    return-void
.end method

.method public getGaussBlurBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressbitmap"    # Z

    .prologue
    const/16 v4, 0x100

    const/4 v2, 0x0

    .line 229
    const/4 v7, 0x0

    .line 230
    .local v7, "retBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 231
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 233
    .local v6, "height":I
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setViewImage(Landroid/graphics/Bitmap;IIII)V

    .line 234
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setGetBlurStatus()V

    .line 235
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setGaussBlurRetBitmap(Z)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/gaussblur/GLProducerThread;->enableGaussionBlurView(Z)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 242
    if-eqz v7, :cond_0

    .line 248
    invoke-static {v7, v8, v6, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 249
    return-object v7
.end method

.method public getGaussBlurBitmap(Landroid/graphics/Bitmap;Landroid/os/Handler;Z)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "compressbitmap"    # Z

    .prologue
    const/16 v4, 0x100

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->startCalc(Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setViewImage(Landroid/graphics/Bitmap;IIII)V

    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setGetBlurStatus()V

    .line 223
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p3}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setGaussBlurRetBitmap(Z)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/gaussblur/GLProducerThread;->enableGaussionBlurView(Z)V

    .line 225
    return-void
.end method

.method public getGaussTime()J
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public quitThread()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    monitor-enter v1

    .line 126
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mQuitThread:Z

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->resize(II)V

    .line 260
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLProducerThread;->initGL()V

    .line 266
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initRenderImpl()V

    .line 271
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mQuitThread:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setEnableDraw(Z)V

    .line 280
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Destroy()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLProducerThread;->destoryGL()V

    .line 307
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawFrame()V

    .line 291
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0
.end method

.method public setBlurRadius(I)V
    .locals 1
    .param p1, "blurRadiusSize"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setBlurRadius(I)V

    .line 196
    return-void
.end method

.method public setBlurTrucent(F)V
    .locals 1
    .param p1, "blurAlpha"    # F

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setBlurTrucent(F)V

    .line 206
    return-void
.end method

.method public setCureentViewHeight(I)V
    .locals 1
    .param p1, "hieght"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setCureentViewHeight(I)V

    .line 216
    return-void
.end method

.method public setLuminance(F)V
    .locals 1
    .param p1, "lu"    # F

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setLuminance(F)V

    .line 201
    return-void
.end method

.method public setModel(I)V
    .locals 1
    .param p1, "usemodel"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setModel(I)V

    .line 211
    return-void
.end method

.method public setViewImage(Landroid/graphics/Bitmap;IIII)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "rectWidth"    # I
    .param p5, "rectHeight"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setViewImage(Landroid/graphics/Bitmap;IIII)V

    .line 155
    return-void
.end method

.method public setViewImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 160
    .local v10, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 161
    .local v12, "rect":Landroid/graphics/Rect;
    const/16 v1, 0x9

    new-array v0, v1, [F

    move-object/from16 v16, v0

    .line 162
    .local v16, "value":[F
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 164
    const/4 v1, 0x2

    aget v8, v16, v1

    .line 165
    .local v8, "left":F
    const/4 v1, 0x5

    aget v14, v16, v1

    .line 166
    .local v14, "top":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v16, v2

    mul-float/2addr v1, v2

    add-float v13, v8, v1

    .line 167
    .local v13, "right":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v16, v2

    mul-float/2addr v1, v2

    add-float v7, v14, v1

    .line 169
    .local v7, "bottom":F
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 170
    .local v9, "location":[I
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 172
    const/4 v1, 0x0

    aget v1, v9, v1

    float-to-int v2, v8

    add-int v3, v1, v2

    .line 173
    .local v3, "posX":I
    float-to-int v4, v14

    .line 175
    .local v4, "posY":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .local v11, "parentView":Landroid/view/ViewParent;
    move-object v15, v11

    .line 176
    check-cast v15, Landroid/view/View;

    .line 177
    .local v15, "v":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    float-to-int v4, v1

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    sub-float v2, v13, v8

    float-to-int v5, v2

    sub-float v2, v7, v14

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setViewImage(Landroid/graphics/Bitmap;IIII)V

    .line 181
    return-void
.end method

.method public setViewport(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLProducerThread;->mRenderer:Lcom/tencent/qrom/gaussblur/GLRendererImpl;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->setViewport(II)V

    .line 255
    return-void
.end method
