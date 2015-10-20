.class public Lcom/tencent/qrom/gaussblur/JNIBlur;
.super Ljava/lang/Object;
.source "JNIBlur.java"


# instance fields
.field private mStackBlurManager:Lcom/tencent/qrom/gaussblur/StackBlurManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/tencent/qrom/gaussblur/StackBlurManager;->getInstance()Lcom/tencent/qrom/gaussblur/StackBlurManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/JNIBlur;->mStackBlurManager:Lcom/tencent/qrom/gaussblur/StackBlurManager;

    .line 12
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "fast"    # Z

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/JNIBlur;->mStackBlurManager:Lcom/tencent/qrom/gaussblur/StackBlurManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/gaussblur/StackBlurManager;->processNatively(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blurRadius(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/JNIBlur;->mStackBlurManager:Lcom/tencent/qrom/gaussblur/StackBlurManager;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/gaussblur/StackBlurManager;->processNatively(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
