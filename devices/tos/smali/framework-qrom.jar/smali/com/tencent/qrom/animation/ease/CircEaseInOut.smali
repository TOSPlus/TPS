.class public Lcom/tencent/qrom/animation/ease/CircEaseInOut;
.super Lcom/tencent/qrom/animation/ease/BaseEase;
.source "CircEaseInOut.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/qrom/animation/ease/BaseEase;-><init>(F)V

    .line 8
    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 4
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    div-float v0, p4, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    .line 13
    neg-float v0, p3

    div-float/2addr v0, v1

    mul-float v1, p1, p1

    sub-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    div-float v0, p3, v1

    sub-float/2addr p1, v1

    mul-float v1, p1, p1

    sub-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
