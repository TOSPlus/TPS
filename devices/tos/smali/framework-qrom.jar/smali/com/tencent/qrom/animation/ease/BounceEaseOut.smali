.class public Lcom/tencent/qrom/animation/ease/BounceEaseOut;
.super Lcom/tencent/qrom/animation/ease/BaseEase;
.source "BounceEaseOut.java"


# instance fields
.field private mBounceEaseIn:Lcom/tencent/qrom/animation/ease/BounceEaseIn;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/qrom/animation/ease/BaseEase;-><init>(F)V

    .line 10
    new-instance v0, Lcom/tencent/qrom/animation/ease/BounceEaseIn;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/animation/ease/BounceEaseIn;-><init>(F)V

    iput-object v0, p0, Lcom/tencent/qrom/animation/ease/BounceEaseOut;->mBounceEaseIn:Lcom/tencent/qrom/animation/ease/BounceEaseIn;

    .line 11
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
    .line 15
    iget-object v0, p0, Lcom/tencent/qrom/animation/ease/BounceEaseOut;->mBounceEaseIn:Lcom/tencent/qrom/animation/ease/BounceEaseIn;

    sub-float v1, p4, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/tencent/qrom/animation/ease/BounceEaseIn;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p3, v0

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
