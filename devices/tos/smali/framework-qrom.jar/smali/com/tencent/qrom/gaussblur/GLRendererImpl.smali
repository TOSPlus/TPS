.class public Lcom/tencent/qrom/gaussblur/GLRendererImpl;
.super Ljava/lang/Object;
.source "GLRendererImpl.java"


# static fields
.field public static final CALC_FINISHED:I = 0x1

.field private static final modelH:F = 100.0f

.field private static final modelW:F = 100.0f


# instance fields
.field private BlurRadius:I

.field public final DRAGMODEL:I

.field private FBOtextureId:[I

.field public final GENERALMODEL:I

.field private Orignalframebuffers:[I

.field private PosX:I

.field private PosY:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private ct:Landroid/content/Context;

.field private depthbuffers:[I

.field private draw:Z

.field private drawTime:I

.field private fboTextureH:I

.field private fboTextureHeight:I

.field private fboTextureW:I

.field private fboTextureWidth:I

.field private framebuffers:[I

.field private gaussFboFrameBuffers:[I

.field private gaussFboRenderBuffers:[I

.field private gaussFboTexttures:[I

.field private gaussTime:J

.field private getGaussBlurBitmap:Z

.field private getGaussBlurBitmapstart:J

.field private handler:Landroid/os/Handler;

.field private initializeed:Z

.field private mBlurTrucent:F

.field private mCompressedResult:Z

.field private mFboMVPMatrix:[F

.field private mGLSurfaceViewHeight:F

.field private mHeight:I

.field private mLuminance:F

.field private mMVPMatrix:[F

.field private mMintextureV:F

.field private mProjMatrix:[F

.field private mRectHeight:I

.field private mRectWidth:I

.field private mReloeadTexture:Z

.field private mViewMatrix:[F

.field private mWidth:I

.field private model:I

.field private plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

.field private retGaussBlurBitmap:Landroid/graphics/Bitmap;

.field private subTexture:Z

.field private textureId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-direct {v0}, Lcom/tencent/qrom/gaussblur/PlaneModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    .line 20
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    .line 21
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    .line 22
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    .line 26
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    .line 28
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosX:I

    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosY:I

    .line 29
    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    .line 31
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initializeed:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussTime:J

    .line 33
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmapstart:J

    .line 35
    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    .line 36
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Orignalframebuffers:[I

    .line 37
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    .line 38
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    .line 39
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    .line 40
    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    .line 42
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    .line 43
    const/16 v0, 0x100

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    .line 46
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    .line 47
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    .line 48
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    .line 49
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    .line 50
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    .line 51
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    .line 53
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mFboMVPMatrix:[F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mLuminance:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMintextureV:F

    .line 59
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mGLSurfaceViewHeight:F

    .line 61
    iput-boolean v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mReloeadTexture:Z

    .line 63
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->GENERALMODEL:I

    .line 64
    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->DRAGMODEL:I

    .line 66
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    .line 68
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mCompressedResult:Z

    .line 75
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->ct:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aput v2, v0, v2

    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aput v2, v0, v2

    .line 78
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapImg"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-direct {v0}, Lcom/tencent/qrom/gaussblur/PlaneModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    .line 20
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    .line 21
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    .line 22
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    .line 26
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    .line 28
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosX:I

    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosY:I

    .line 29
    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    .line 31
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initializeed:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussTime:J

    .line 33
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmapstart:J

    .line 35
    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    .line 36
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Orignalframebuffers:[I

    .line 37
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    .line 38
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    .line 39
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    .line 40
    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    .line 42
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    .line 43
    const/16 v0, 0x100

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    .line 44
    const/16 v0, 0x100

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    .line 46
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    .line 47
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    .line 48
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    .line 49
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    .line 50
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    .line 51
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    .line 53
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mFboMVPMatrix:[F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mLuminance:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMintextureV:F

    .line 59
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mGLSurfaceViewHeight:F

    .line 61
    iput-boolean v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mReloeadTexture:Z

    .line 63
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->GENERALMODEL:I

    .line 64
    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->DRAGMODEL:I

    .line 66
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    .line 68
    iput-boolean v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mCompressedResult:Z

    .line 83
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->ct:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aput v2, v0, v2

    .line 85
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aput v2, v0, v2

    .line 86
    iput v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    .line 88
    iput-object p2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method private createFBO()V
    .locals 15

    .prologue
    const v14, 0x8d41

    const v13, 0x8d40

    const/16 v0, 0xde1

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 346
    iget-boolean v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    if-nez v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-boolean v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    .line 351
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    invoke-static {v12, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 352
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    invoke-static {v12, v3, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 353
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    invoke-static {v12, v3, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 355
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    aput v1, v3, v1

    .line 356
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aput v1, v3, v1

    .line 357
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aput v1, v3, v1

    .line 360
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 362
    iput-boolean v12, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    .line 364
    iget-boolean v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mCompressedResult:Z

    if-eqz v3, :cond_6

    .line 366
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 367
    .local v9, "minValue":I
    :goto_1
    iput v12, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    .line 369
    :goto_2
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    if-ge v3, v9, :cond_4

    .line 370
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    goto :goto_2

    .line 366
    .end local v9    # "minValue":I
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    goto :goto_1

    .line 372
    .restart local v9    # "minValue":I
    :cond_4
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    int-to-float v3, v3

    int-to-float v4, v9

    div-float v10, v3, v4

    .line 373
    .local v10, "radio":F
    float-to-double v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v11, v3

    .line 375
    .local v11, "scale":I
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    shr-int/2addr v3, v11

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    .line 377
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    .line 385
    .end local v9    # "minValue":I
    .end local v10    # "radio":F
    .end local v11    # "scale":I
    :goto_3
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    .line 387
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_7

    const/16 v2, 0x1908

    .line 389
    .local v2, "Format":I
    :goto_4
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    invoke-static {v12, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 390
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 391
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 393
    const/16 v3, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 394
    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 395
    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 396
    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 398
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    invoke-static {v12, v3, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 399
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aget v3, v3, v1

    invoke-static {v14, v3}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 400
    const v3, 0x81a5

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    iget v5, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    invoke-static {v14, v3, v4, v5}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 402
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    invoke-static {v12, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 403
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aget v3, v3, v1

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 406
    const v3, 0x8ce0

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    aget v4, v4, v1

    invoke-static {v13, v3, v0, v4, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 408
    const v0, 0x8d00

    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aget v3, v3, v1

    invoke-static {v13, v0, v14, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 410
    invoke-static {v13}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v3, 0x8cd5

    if-eq v0, v3, :cond_5

    .line 414
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 415
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 416
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    invoke-static {v12, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 418
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aput v1, v0, v1

    .line 419
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aput v1, v0, v1

    .line 420
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Orignalframebuffers:[I

    aget v0, v0, v1

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 424
    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    goto/16 :goto_0

    .line 381
    .end local v2    # "Format":I
    :cond_6
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    .line 382
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    goto/16 :goto_3

    .line 387
    :cond_7
    const/16 v2, 0x1907

    goto/16 :goto_4
.end method

.method private createGaussFbo(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "setbitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_4

    .line 435
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 492
    :goto_0
    return-void

    .line 438
    :cond_3
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 439
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 440
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 443
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    .line 444
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    .line 446
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_5

    const/16 v2, 0x1908

    .line 448
    .local v2, "Format":I
    :goto_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 449
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    const/4 v0, 0x2

    if-ge v11, v0, :cond_6

    .line 451
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v1, v1, v11

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 452
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    const/4 v5, 0x0

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 453
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 454
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 455
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 456
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 449
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 446
    .end local v2    # "Format":I
    .end local v11    # "i":I
    :cond_5
    const/16 v2, 0x1907

    goto :goto_1

    .line 459
    .restart local v2    # "Format":I
    .restart local v11    # "i":I
    :cond_6
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 460
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    const/4 v0, 0x2

    if-ge v12, v0, :cond_7

    .line 462
    const v0, 0x8d41

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    aget v1, v1, v12

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 463
    const v0, 0x8d41

    const v1, 0x81a5

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 460
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 466
    :cond_7
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 467
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_4
    const/4 v0, 0x2

    if-ge v13, v0, :cond_8

    .line 469
    const v0, 0x8d40

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aget v1, v1, v13

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 470
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v3, 0xde1

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v4, v4, v13

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 471
    const v0, 0x8d40

    const v1, 0x8d00

    const v3, 0x8d41

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    aget v4, v4, v13

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 467
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 474
    :cond_8
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_9

    .line 476
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 477
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 478
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 481
    :cond_9
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 482
    const v0, 0x8d41

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 484
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 485
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v4, 0x0

    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    int-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    int-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 487
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 488
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x3f600000    # -5.0f

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 489
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 490
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mFboMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 491
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mFboMVPMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_0
.end method

.method private doSaveGaussBlur(II)V
    .locals 18
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 286
    mul-int v2, p1, p2

    new-array v9, v2, [I

    .line 287
    .local v9, "b":[I
    mul-int v2, p1, p2

    new-array v10, v2, [I

    .line 288
    .local v10, "bt":[I
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 289
    .local v8, "ib":Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 292
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_1

    .line 295
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move/from16 v0, p1

    if-ge v12, v0, :cond_0

    .line 297
    mul-int v2, v11, p1

    add-int/2addr v2, v12

    aget v15, v9, v2

    .line 298
    .local v15, "pix":I
    shr-int/lit8 v2, v15, 0x10

    and-int/lit16 v14, v2, 0xff

    .line 299
    .local v14, "pb":I
    shl-int/lit8 v2, v15, 0x10

    const/high16 v3, 0xff0000

    and-int v17, v2, v3

    .line 300
    .local v17, "pr":I
    const v2, -0xff0100

    and-int/2addr v2, v15

    or-int v2, v2, v17

    or-int v16, v2, v14

    .line 301
    .local v16, "pix1":I
    sub-int v2, p2, v13

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p1

    add-int/2addr v2, v12

    aput v16, v10, v2

    .line 295
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 292
    .end local v14    # "pb":I
    .end local v15    # "pix":I
    .end local v16    # "pix1":I
    .end local v17    # "pr":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 305
    .end local v12    # "j":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    .line 309
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 220
    iget-object v8, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v8

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initializeed:Z

    if-eqz v0, :cond_0

    .line 223
    monitor-exit v8

    .line 266
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 226
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    int-to-float v2, v2

    neg-float v2, v2

    div-float/2addr v2, v7

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    int-to-float v4, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    int-to-float v6, v6

    div-float v5, v6, v7

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 229
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 230
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 231
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 232
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 234
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mReloeadTexture:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    if-eqz v0, :cond_3

    .line 238
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 239
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    const/16 v5, 0x1908

    .line 240
    .local v5, "bitmapFormat":I
    :goto_1
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    const/16 v6, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 257
    .end local v5    # "bitmapFormat":I
    :goto_2
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->createGaussFbo(Landroid/graphics/Bitmap;)V

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->reset()V

    .line 262
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->createFBO()V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initializeed:Z

    .line 265
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 239
    :cond_2
    const/16 v5, 0x1907

    goto :goto_1

    .line 244
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_4

    .line 245
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 247
    :cond_4
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 249
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 250
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 251
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 252
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 253
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 254
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private reset()V
    .locals 5

    .prologue
    .line 198
    const/4 v3, 0x1

    iput v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    .line 200
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 203
    .local v2, "tW":I
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 205
    .local v1, "tH":I
    if-le v2, v1, :cond_2

    move v0, v1

    .line 206
    .local v0, "mimValue":I
    :goto_0
    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    if-le v3, v0, :cond_0

    .line 207
    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gaussblur/PlaneModel;->setTxtureWidth(F)V

    .line 210
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gaussblur/PlaneModel;->setTxtureHeight(F)V

    .line 213
    .end local v0    # "mimValue":I
    .end local v1    # "tH":I
    .end local v2    # "tW":I
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-virtual {v3}, Lcom/tencent/qrom/gaussblur/PlaneModel;->resetting()V

    .line 214
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gaussblur/PlaneModel;->setBlurRadiusValue(I)V

    .line 215
    iget-object v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mLuminance:F

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gaussblur/PlaneModel;->setBlurLuminance(F)V

    .line 216
    return-void

    .restart local v1    # "tH":I
    .restart local v2    # "tW":I
    :cond_2
    move v0, v2

    .line 205
    goto :goto_0
.end method


# virtual methods
.method public Destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/PlaneModel;->destroy()V

    .line 657
    iput-boolean v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mReloeadTexture:Z

    .line 659
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->FBOtextureId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    aget v0, v0, v1

    if-eqz v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->depthbuffers:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 670
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 671
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 672
    return-void
.end method

.method public drawFrame()V
    .locals 15

    .prologue
    const/16 v14, 0xde1

    const v13, 0x8d40

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 539
    iget-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    if-eqz v6, :cond_7

    .line 541
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->init()V

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 545
    .local v4, "start":J
    iget-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v11, :cond_0

    .line 547
    iput-wide v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmapstart:J

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->createFBO()V

    .line 552
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v11, :cond_8

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aget v6, v6, v10

    if-eqz v6, :cond_8

    .line 554
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aget v6, v6, v10

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 555
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    invoke-static {v10, v10, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 576
    :goto_0
    const/16 v6, 0x4100

    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 577
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 579
    const/4 v2, 0x0

    .line 581
    .local v2, "hadTexture":Z
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    aget v6, v6, v10

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v6, v6, v10

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v6, v6, v11

    if-eqz v6, :cond_2

    .line 583
    :cond_1
    invoke-static {v14}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 585
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v11, :cond_b

    .line 586
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    aget v6, v6, v10

    invoke-static {v14, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 592
    :goto_1
    const/4 v2, 0x1

    .line 595
    :cond_2
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMintextureV:F

    invoke-virtual {v6, v7}, Lcom/tencent/qrom/gaussblur/PlaneModel;->setMinTextureHeight(F)V

    .line 596
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    invoke-virtual {v6, v7}, Lcom/tencent/qrom/gaussblur/PlaneModel;->seRenderTimeValue(I)V

    .line 597
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    invoke-virtual {v6, v7}, Lcom/tencent/qrom/gaussblur/PlaneModel;->setBlurAlpha(F)V

    .line 599
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-eq v6, v11, :cond_3

    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v12, :cond_d

    .line 600
    :cond_3
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mFboMVPMatrix:[F

    invoke-virtual {v6, v7, v2}, Lcom/tencent/qrom/gaussblur/PlaneModel;->drawPlaneModel([FZ)V

    .line 604
    :goto_2
    iget-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-nez v6, :cond_5

    .line 606
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v7

    .line 608
    :try_start_0
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    iget v8, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    invoke-direct {p0, v6, v8}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->doSaveGaussBlur(II)V

    .line 609
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmapstart:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussTime:J

    .line 615
    iput-boolean v10, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    .line 616
    iput-boolean v10, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    .line 617
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Orignalframebuffers:[I

    aget v6, v6, v10

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 620
    :cond_4
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_5

    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "time"

    iget-wide v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussTime:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 625
    const/4 v1, 0x1

    .line 626
    .local v1, "flag":I
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 627
    .local v3, "msg":Landroid/os/Message;
    iput v1, v3, Landroid/os/Message;->what:I

    .line 628
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 629
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 630
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 632
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    .line 636
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "flag":I
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussTime:J

    .line 637
    iget-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-eq v6, v11, :cond_6

    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v12, :cond_7

    .line 640
    :cond_6
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v11, :cond_e

    .line 641
    iput v12, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    .line 651
    .end local v2    # "hadTexture":Z
    .end local v4    # "start":J
    :cond_7
    :goto_3
    return-void

    .line 557
    .restart local v4    # "start":J
    :cond_8
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v12, :cond_9

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aget v6, v6, v11

    if-eqz v6, :cond_9

    .line 559
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aget v6, v6, v11

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 560
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureWidth:I

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureHeight:I

    invoke-static {v10, v10, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_0

    .line 564
    :cond_9
    iget-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aget v6, v6, v10

    if-eqz v6, :cond_a

    .line 566
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    aget v6, v6, v10

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 567
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureW:I

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->fboTextureH:I

    invoke-static {v10, v10, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_0

    .line 571
    :cond_a
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Orignalframebuffers:[I

    aget v6, v6, v10

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 572
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosX:I

    iget v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosY:I

    iget v8, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    iget v9, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_0

    .line 587
    .restart local v2    # "hadTexture":Z
    :cond_b
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v12, :cond_c

    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v6, v6, v10

    if-eqz v6, :cond_c

    .line 588
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v6, v6, v10

    invoke-static {v14, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_1

    .line 590
    :cond_c
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aget v6, v6, v11

    invoke-static {v14, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_1

    .line 602
    :cond_d
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    invoke-virtual {v6, v7, v2}, Lcom/tencent/qrom/gaussblur/PlaneModel;->drawPlaneModel([FZ)V

    goto/16 :goto_2

    .line 609
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 642
    :cond_e
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-ne v6, v12, :cond_f

    .line 644
    iput v10, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    .line 645
    iget v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    if-ne v6, v11, :cond_7

    .line 646
    iput-boolean v10, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    goto :goto_3

    .line 649
    :cond_f
    iput v10, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    goto :goto_3
.end method

.method public getGaussBlurBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGaussTime()J
    .locals 4

    .prologue
    .line 278
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 280
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussTime:J

    monitor-exit v1

    return-wide v2

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initRenderImpl()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 503
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    iget v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mWidth:I

    int-to-float v2, v2

    neg-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mHeight:I

    int-to-float v4, v4

    neg-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 505
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 506
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/high16 v2, -0x3f600000    # -5.0f

    invoke-static {v0, v1, v9, v9, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 507
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 509
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->textureId:[I

    aput v1, v0, v1

    .line 510
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    invoke-virtual {v0, v7, v7}, Lcom/tencent/qrom/gaussblur/PlaneModel;->Init(FF)V

    .line 511
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->plane:Lcom/tencent/qrom/gaussblur/PlaneModel;

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->ct:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/gaussblur/PlaneModel;->LoadShader(Landroid/content/Context;)V

    .line 513
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aput v1, v0, v1

    .line 514
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aput v1, v0, v1

    .line 515
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    aput v1, v0, v1

    .line 517
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboTexttures:[I

    aput v1, v2, v8

    aput v1, v0, v1

    .line 518
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboRenderBuffers:[I

    aput v1, v2, v8

    aput v1, v0, v1

    .line 519
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->gaussFboFrameBuffers:[I

    aput v1, v2, v8

    aput v1, v0, v1

    .line 521
    const v0, 0x8ca6

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->Orignalframebuffers:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 523
    iput v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosX:I

    .line 524
    iput v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosY:I

    .line 525
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mWidth:I

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    .line 526
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mHeight:I

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    .line 527
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mGLSurfaceViewHeight:F

    .line 528
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->init()V

    .line 529
    return-void
.end method

.method public resize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mWidth:I

    .line 534
    iput p2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mHeight:I

    .line 535
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 2
    .param p1, "blurRadiusSize"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 143
    :try_start_0
    iput p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    .line 144
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    if-gez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->BlurRadius:I

    .line 146
    :cond_0
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBlurTrucent(F)V
    .locals 4
    .param p1, "bluralpha"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 161
    :try_start_0
    iput p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    .line 162
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    .line 165
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mBlurTrucent:F

    .line 167
    :cond_1
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCureentViewHeight(I)V
    .locals 7
    .param p1, "height"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 177
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v6

    .line 179
    :try_start_0
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->drawTime:I

    if-eqz v0, :cond_0

    .line 180
    monitor-exit v6

    .line 194
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    if-ne v0, v1, :cond_1

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    .line 185
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mGLSurfaceViewHeight:F

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMintextureV:F

    .line 187
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 188
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mGLSurfaceViewHeight:F

    int-to-float v4, p1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 189
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    int-to-float v3, p1

    div-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 190
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 191
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mMVPMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mProjMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mViewMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 193
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnableDraw(Z)V
    .locals 2
    .param p1, "render"    # Z

    .prologue
    .line 270
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 272
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->draw:Z

    .line 273
    monitor-exit v1

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGaussBlurRetBitmap(Z)V
    .locals 2
    .param p1, "compressbitmap"    # Z

    .prologue
    .line 313
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 315
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mCompressedResult:Z

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGetBlurStatus()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 331
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->retGaussBlurBitmap:Landroid/graphics/Bitmap;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->getGaussBlurBitmap:Z

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLuminance(F)V
    .locals 2
    .param p1, "lu"    # F

    .prologue
    .line 151
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    :try_start_0
    iput v0, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mLuminance:F

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "usemodel"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->model:I

    .line 173
    return-void
.end method

.method public setViewImage(Landroid/graphics/Bitmap;IIII)V
    .locals 10
    .param p1, "bitmapImg"    # Landroid/graphics/Bitmap;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "rectWidth"    # I
    .param p5, "rectHeight"    # I

    .prologue
    const/16 v0, 0x1908

    const/16 v6, 0x1907

    .line 93
    iget-object v7, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v7

    .line 95
    if-eqz p1, :cond_5

    .line 97
    :try_start_0
    iget-object v8, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 98
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    .line 112
    :goto_0
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    iput p2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosX:I

    .line 115
    iput p3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosY:I

    .line 116
    iput p4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    .line 117
    iput p5, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    .line 119
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mReloeadTexture:Z

    .line 120
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initializeed:Z

    .line 136
    :cond_0
    :goto_1
    monitor-exit v7

    .line 137
    return-void

    .line 101
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_2

    move v3, v0

    .line 102
    .local v3, "resFormat":I
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_3

    .line 103
    .local v0, "nowFormat":I
    :goto_3
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .local v5, "resWidth":I
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 104
    .local v4, "resHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, "nowWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 106
    .local v1, "nowHeight":I
    if-ne v3, v0, :cond_4

    if-ne v5, v2, :cond_4

    if-ne v4, v1, :cond_4

    .line 107
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    goto :goto_0

    .line 136
    .end local v0    # "nowFormat":I
    .end local v1    # "nowHeight":I
    .end local v2    # "nowWidth":I
    .end local v3    # "resFormat":I
    .end local v4    # "resHeight":I
    .end local v5    # "resWidth":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    move v3, v6

    .line 101
    goto :goto_2

    .restart local v3    # "resFormat":I
    :cond_3
    move v0, v6

    .line 102
    goto :goto_3

    .line 109
    .restart local v0    # "nowFormat":I
    .restart local v1    # "nowHeight":I
    .restart local v2    # "nowWidth":I
    .restart local v4    # "resHeight":I
    .restart local v5    # "resWidth":I
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    goto :goto_0

    .line 124
    .end local v0    # "nowFormat":I
    .end local v1    # "nowHeight":I
    .end local v2    # "nowWidth":I
    .end local v3    # "resFormat":I
    .end local v4    # "resHeight":I
    .end local v5    # "resWidth":I
    :cond_5
    iget-object v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 126
    iput p2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosX:I

    .line 127
    iput p3, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->PosY:I

    .line 128
    iput p4, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectWidth:I

    .line 129
    iput p5, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mRectHeight:I

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mReloeadTexture:Z

    .line 132
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->subTexture:Z

    .line 133
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->initializeed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setViewport(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 496
    iput p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mWidth:I

    .line 497
    iput p2, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->mHeight:I

    .line 498
    return-void
.end method

.method public startCalc(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->framebuffers:[I

    monitor-enter v1

    .line 340
    :try_start_0
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GLRendererImpl;->handler:Landroid/os/Handler;

    .line 341
    monitor-exit v1

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
