.class public Lcom/tencent/qrom/animation/ease/BackEaseOut;
.super Lcom/tencent/qrom/animation/ease/BaseEase;
.source "BackEaseOut.java"


# instance fields
.field private s:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/qrom/animation/ease/BaseEase;-><init>(F)V

    .line 6
    const v0, 0x3fd9cd60

    iput v0, p0, Lcom/tencent/qrom/animation/ease/BackEaseOut;->s:F

    .line 10
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "back"    # F

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/tencent/qrom/animation/ease/BackEaseOut;-><init>(F)V

    .line 14
    iput p2, p0, Lcom/tencent/qrom/animation/ease/BackEaseOut;->s:F

    .line 15
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
    .line 19
    div-float/2addr p1, p4

    mul-float v0, p3, p1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/tencent/qrom/animation/ease/BackEaseOut;->s:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/tencent/qrom/animation/ease/BackEaseOut;->s:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
