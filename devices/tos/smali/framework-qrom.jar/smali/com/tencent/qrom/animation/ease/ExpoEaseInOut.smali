.class public Lcom/tencent/qrom/animation/ease/ExpoEaseInOut;
.super Lcom/tencent/qrom/animation/ease/BaseEase;
.source "ExpoEaseInOut.java"


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
    .locals 6
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 12
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 15
    :goto_0
    return-object v0

    .line 13
    :cond_0
    cmpl-float v0, p1, p4

    if-nez v0, :cond_1

    add-float v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    div-float v0, p4, v3

    div-float/2addr p1, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    div-float v0, p3, v3

    const/high16 v1, 0x41200000    # 10.0f

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_2
    div-float v0, p3, v3

    const/high16 v1, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
