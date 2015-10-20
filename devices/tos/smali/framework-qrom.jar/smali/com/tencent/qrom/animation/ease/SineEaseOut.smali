.class public Lcom/tencent/qrom/animation/ease/SineEaseOut;
.super Lcom/tencent/qrom/animation/ease/BaseEase;
.source "SineEaseOut.java"


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
    .locals 5
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    .line 12
    neg-float v0, p3

    div-float v1, p1, p4

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
