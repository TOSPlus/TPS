.class public abstract Lcom/tencent/qrom/interpolator/BaseInterpolator;
.super Ljava/lang/Object;
.source "BaseInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculate(FFFF)Ljava/lang/Float;
.end method

.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    .line 9
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v4, p1

    .line 10
    .local v3, "t":F
    const/4 v0, 0x0

    .line 11
    .local v0, "b":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .local v1, "c":F
    const/high16 v2, 0x42c80000    # 100.0f

    .line 13
    .local v2, "d":F
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/tencent/qrom/interpolator/BaseInterpolator;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    return v4
.end method
