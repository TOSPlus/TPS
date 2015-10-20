.class final Lcom/tencent/qrom/gif/GifViewUtils;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gif/GifViewUtils$InitResult;
    }
.end annotation


# static fields
.field static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static getPercent(Landroid/view/View;Landroid/util/AttributeSet;II)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/tencent/qrom/R$styleable;->GifView:[I

    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 90
    .local v1, "gifViewAttributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 91
    .local v0, "cachePercent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return v0
.end method

.method private static getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;ZI)I
    .locals 5
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "isSrc"    # Z
    .param p3, "cachePercent"    # I

    .prologue
    const/4 v3, 0x0

    .line 39
    const-string v4, "http://schemas.android.com/apk/res/android"

    if-eqz p2, :cond_1

    const-string v2, "src"

    :goto_0
    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "resId":I
    if-lez v0, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "resourceTypeName":Ljava/lang/String;
    const-string v2, "drawable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    :cond_0
    invoke-static {p0, p2, v0, p3}, Lcom/tencent/qrom/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    .end local v0    # "resId":I
    .end local v1    # "resourceTypeName":Ljava/lang/String;
    :goto_1
    return v0

    .line 39
    :cond_1
    const-string v2, "background"

    goto :goto_0

    .restart local v0    # "resId":I
    :cond_2
    move v0, v3

    .line 48
    goto :goto_1
.end method

.method static initImageView(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lcom/tencent/qrom/gif/GifViewUtils$InitResult;
    .locals 10
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/tencent/qrom/R$styleable;->GifView:[I

    invoke-virtual {v5, p1, v6, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 26
    .local v3, "gifViewAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 27
    .local v1, "cachePercent":I
    invoke-virtual {v3, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 28
    .local v2, "freezesAnimation":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    const-string v5, "rick_Print:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InitResult initImageView cachePercent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0, p1, v9, v1}, Lcom/tencent/qrom/gif/GifViewUtils;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;ZI)I

    move-result v4

    .line 32
    .local v4, "sourceResId":I
    invoke-static {p0, p1, v8, v1}, Lcom/tencent/qrom/gif/GifViewUtils;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;ZI)I

    move-result v0

    .line 33
    .local v0, "backgroundResId":I
    new-instance v5, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;

    invoke-direct {v5, v4, v0, v2, v1}, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;-><init>(IIZI)V

    .line 35
    .end local v0    # "backgroundResId":I
    .end local v1    # "cachePercent":I
    .end local v2    # "freezesAnimation":Z
    .end local v3    # "gifViewAttributes":Landroid/content/res/TypedArray;
    .end local v4    # "sourceResId":I
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;

    invoke-direct {v5, v8, v8, v8, v8}, Lcom/tencent/qrom/gif/GifViewUtils$InitResult;-><init>(IIZI)V

    goto :goto_0
.end method

.method static isFreezingAnimation(Landroid/view/View;Landroid/util/AttributeSet;II)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/tencent/qrom/R$styleable;->GifView:[I

    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    .local v1, "gifViewAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 84
    .local v0, "freezesAnimation":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return v0
.end method

.method static setGifImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    new-instance v0, Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setResource(Landroid/widget/ImageView;ZI)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "isSrc"    # Z
    .param p2, "resId"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/qrom/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZII)Z

    move-result v0

    return v0
.end method

.method static setResource(Landroid/widget/ImageView;ZII)Z
    .locals 5
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "isSrc"    # Z
    .param p2, "resId"    # I
    .param p3, "cachePercent"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 59
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 61
    :try_start_0
    new-instance v0, Lcom/tencent/qrom/gif/GifDrawable;

    invoke-direct {v0, v2, p2, p3}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 62
    .local v0, "d":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_0
    const/4 v3, 0x1

    .line 78
    .end local v0    # "d":Lcom/tencent/qrom/gif/GifDrawable;
    :goto_1
    return v3

    .line 64
    .restart local v0    # "d":Lcom/tencent/qrom/gif/GifDrawable;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 70
    .end local v0    # "d":Lcom/tencent/qrom/gif/GifDrawable;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 67
    .restart local v0    # "d":Lcom/tencent/qrom/gif/GifDrawable;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 72
    .end local v0    # "d":Lcom/tencent/qrom/gif/GifDrawable;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 74
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
