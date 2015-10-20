.class public Lcom/tencent/qrom/gif/GifTextureView;
.super Landroid/view/TextureView;
.source "GifTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gif/GifTextureView$1;,
        Lcom/tencent/qrom/gif/GifTextureView$RenderThread;
    }
.end annotation


# static fields
.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mFreezesAnimation:Z

.field private mInputSource:Lcom/tencent/qrom/gif/InputSource;

.field private mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSpeedFactor:F

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "gifjnisurface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mSpeedFactor:F

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/tencent/qrom/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mSpeedFactor:F

    .line 60
    invoke-direct {p0, p2, v1, v1}, Lcom/tencent/qrom/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mSpeedFactor:F

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/tencent/qrom/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/gif/GifTextureView;)Lcom/tencent/qrom/gif/InputSource;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    return-object v0
.end method

.method static synthetic access$101(Lcom/tencent/qrom/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView;
    .param p1, "x1"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/gif/GifTextureView;Lcom/tencent/qrom/gif/GifInfoHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView;
    .param p1, "x1"    # Lcom/tencent/qrom/gif/GifInfoHandle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/GifTextureView;->updateTextureViewSize(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qrom/gif/GifTextureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView;

    .prologue
    .line 40
    iget v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mSpeedFactor:F

    return v0
.end method

.method static synthetic access$501(Lcom/tencent/qrom/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView;
    .param p1, "x1"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/gif/GifTextureView;)Lcom/tencent/qrom/gif/GifTextureView$RenderThread;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    return-object v0
.end method

.method private static findSource(Landroid/content/res/TypedArray;)Lcom/tencent/qrom/gif/InputSource;
    .locals 5
    .param p0, "textureViewAttributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 141
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v1, "value":Landroid/util/TypedValue;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 155
    :goto_0
    return-object v2

    .line 146
    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "type":Ljava/lang/String;
    const-string v2, "drawable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    :cond_1
    new-instance v2, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v2, v3, v4}, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;-><init>(Landroid/content/res/Resources;I)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v2, "string"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected string, drawable or raw resource, type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cannot be converted to GIF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0    # "type":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/tencent/qrom/gif/InputSource$AssetSource;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/qrom/gif/InputSource$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 86
    if-eqz p1, :cond_2

    .line 87
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "scaleType"

    const/4 v4, -0x1

    invoke-interface {p1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "scaleTypeIndex":I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/tencent/qrom/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 89
    sget-object v2, Lcom/tencent/qrom/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/tencent/qrom/R$styleable;->GifTextureView:[I

    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, "textureViewAttributes":Landroid/content/res/TypedArray;
    invoke-static {v1}, Lcom/tencent/qrom/gif/GifTextureView;->findSource(Landroid/content/res/TypedArray;)Lcom/tencent/qrom/gif/InputSource;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-super {p0, v2}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 95
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qrom/gif/GifViewUtils;->isFreezingAnimation(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/qrom/gif/GifTextureView;->mFreezesAnimation:Z

    .line 100
    .end local v0    # "scaleTypeIndex":I
    .end local v1    # "textureViewAttributes":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;-><init>(Lcom/tencent/qrom/gif/GifTextureView;)V

    iput-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    .line 102
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->start()V

    .line 106
    :cond_1
    return-void

    .line 98
    :cond_2
    invoke-super {p0, v5}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_0
.end method

.method private updateTextureViewSize(Lcom/tencent/qrom/gif/GifInfoHandle;)V
    .locals 13
    .param p1, "gifInfoHandle"    # Lcom/tencent/qrom/gif/GifInfoHandle;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 342
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    .local v5, "transform":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 344
    .local v7, "viewWidth":F
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView;->getHeight()I

    move-result v8

    int-to-float v6, v8

    .line 346
    .local v6, "viewHeight":F
    iget v8, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    int-to-float v8, v8

    div-float v2, v8, v7

    .line 347
    .local v2, "scaleX":F
    iget v8, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    int-to-float v8, v8

    div-float v3, v8, v6

    .line 348
    .local v3, "scaleY":F
    new-instance v4, Landroid/graphics/RectF;

    iget v8, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    int-to-float v8, v8

    iget v9, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 349
    .local v4, "src":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v10, v10, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    .local v0, "dst":Landroid/graphics/RectF;
    sget-object v8, Lcom/tencent/qrom/gif/GifTextureView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 385
    :goto_0
    invoke-super {p0, v5}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 386
    :pswitch_0
    return-void

    .line 352
    :pswitch_1
    div-float v8, v7, v11

    div-float v9, v6, v11

    invoke-virtual {v5, v2, v3, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 355
    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    div-float v1, v12, v8

    .line 356
    .local v1, "scaleRef":F
    mul-float v8, v1, v2

    mul-float v9, v1, v3

    div-float v10, v7, v11

    div-float v11, v6, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 359
    .end local v1    # "scaleRef":F
    :pswitch_3
    iget v8, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    int-to-float v8, v8

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_0

    iget v8, p1, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_0

    .line 360
    const/high16 v1, 0x3f800000    # 1.0f

    .line 364
    .restart local v1    # "scaleRef":F
    :goto_1
    mul-float v8, v1, v2

    mul-float v9, v1, v3

    div-float v10, v7, v11

    div-float v11, v6, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 362
    .end local v1    # "scaleRef":F
    :cond_0
    div-float v8, v12, v2

    div-float v9, v12, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .restart local v1    # "scaleRef":F
    goto :goto_1

    .line 367
    .end local v1    # "scaleRef":F
    :pswitch_4
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v0, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 368
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 371
    :pswitch_5
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v0, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 372
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 375
    :pswitch_6
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v0, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 376
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 381
    :pswitch_7
    iget-object v8, p0, Lcom/tencent/qrom/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 382
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$700(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$700(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    invoke-static {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qrom/gif/GifIOException;->fromCode(I)Lcom/tencent/qrom/gif/GifIOException;

    move-result-object v0

    goto :goto_0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 425
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-virtual {v1}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->dispose()V

    .line 273
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 274
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 275
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 278
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 436
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/gif/GifViewSavedState;

    .line 437
    .local v0, "ss":Lcom/tencent/qrom/gif/GifViewSavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 438
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    iget-object v2, v0, Lcom/tencent/qrom/gif/GifViewSavedState;->mStates:[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mSavedState:[J

    .line 439
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    invoke-static {v1}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getSavedState()[J

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mSavedState:[J

    .line 431
    new-instance v1, Lcom/tencent/qrom/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/view/TextureView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-boolean v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mFreezesAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mSavedState:[J

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/tencent/qrom/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[J)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFreezesAnimation(Z)V
    .locals 0
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mFreezesAnimation:Z

    .line 449
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 396
    return-void
.end method

.method public declared-synchronized setInputSource(Lcom/tencent/qrom/gif/InputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lcom/tencent/qrom/gif/InputSource;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->dispose()V

    .line 287
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    .line 288
    new-instance v0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;-><init>(Lcom/tencent/qrom/gif/GifTextureView;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 265
    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 266
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mInputSource:Lcom/tencent/qrom/gif/InputSource;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/gif/GifTextureView;->setInputSource(Lcom/tencent/qrom/gif/InputSource;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 330
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    invoke-static {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifTextureView;->updateTextureViewSize(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 331
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 302
    iput p1, p0, Lcom/tencent/qrom/gif/GifTextureView;->mSpeedFactor:F

    .line 303
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    invoke-static {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 304
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing SurfaceTexture is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing SurfaceTextureListener is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 407
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    invoke-static {v0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifTextureView;->updateTextureViewSize(Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 408
    return-void
.end method
