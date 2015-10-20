.class public Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;
.super Lcom/tencent/qrom/interpolator/BaseInterpolator;
.source "BounceEaseOutInterpolator.java"


# instance fields
.field private mBounceEaseIn:Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/qrom/interpolator/BaseInterpolator;-><init>()V

    .line 9
    new-instance v0, Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

    invoke-direct {v0}, Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;->mBounceEaseIn:Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

    .line 10
    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 3
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tencent/qrom/interpolator/BounceEaseOutInterpolator;->mBounceEaseIn:Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;

    sub-float v1, p4, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p3, v0

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
