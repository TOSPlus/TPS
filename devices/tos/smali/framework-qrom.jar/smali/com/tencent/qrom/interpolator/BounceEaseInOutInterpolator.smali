.class public Lcom/tencent/qrom/interpolator/BounceEaseInOutInterpolator;
.super Lcom/tencent/qrom/interpolator/BaseInterpolator;
.source "BounceEaseInOutInterpolator.java"


# instance fields
.field private mBounceEaseIn:Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

.field private mBounceEaseOut:Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/qrom/interpolator/BaseInterpolator;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;

    invoke-direct {v0}, Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/interpolator/BounceEaseInOutInterpolator;->mBounceEaseOut:Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;

    .line 12
    new-instance v0, Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

    invoke-direct {v0}, Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/interpolator/BounceEaseInOutInterpolator;->mBounceEaseIn:Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

    .line 13
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
    const/4 v3, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    div-float v0, p4, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/tencent/qrom/interpolator/BounceEaseInOutInterpolator;->mBounceEaseOut:Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, v3, p3, p4}, Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/interpolator/BounceEaseInOutInterpolator;->mBounceEaseIn:Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

    mul-float/2addr v1, p1

    sub-float/2addr v1, p4

    invoke-virtual {v0, v1, v3, p3, p4}, Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    mul-float v1, p3, v2

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
