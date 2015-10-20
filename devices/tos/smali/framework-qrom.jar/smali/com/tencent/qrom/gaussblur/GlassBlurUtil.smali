.class public Lcom/tencent/qrom/gaussblur/GlassBlurUtil;
.super Ljava/lang/Object;
.source "GlassBlurUtil.java"


# static fields
.field public static final DEFAULT_BLUR_RADIUS:I = 0x5

.field public static final DEFAULT_DOWNSAMPLING:I = 0x5

.field public static final MAX_BLUR_RADIUS:I = 0x14

.field public static final MAX_DOWNSAMPLING:I = 0x6

.field public static final MIN_BLUR_RADIUS:I = 0x1

.field public static final MIN_DOWNSAMPLING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidBlurRadius(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 13
    if-lt p0, v0, :cond_0

    const/16 v1, 0x14

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDownsampling(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 17
    if-lt p0, v0, :cond_0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
