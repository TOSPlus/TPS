.class public Lcom/tencent/qrom/interpolator/SineEaseInOutInterpolator;
.super Lcom/tencent/qrom/interpolator/BaseInterpolator;
.source "SineEaseInOutInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/tencent/qrom/interpolator/BaseInterpolator;-><init>()V

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
    .line 8
    neg-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    float-to-double v3, p1

    mul-double/2addr v1, v3

    float-to-double v3, p4

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
