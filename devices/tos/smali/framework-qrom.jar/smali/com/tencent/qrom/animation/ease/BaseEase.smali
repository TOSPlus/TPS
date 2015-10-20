.class public abstract Lcom/tencent/qrom/animation/ease/BaseEase;
.super Ljava/lang/Object;
.source "BaseEase.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDuration:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/tencent/qrom/animation/ease/BaseEase;->mDuration:F

    .line 12
    return-void
.end method


# virtual methods
.method public abstract calculate(FFFF)Ljava/lang/Float;
.end method

.method public final evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Number;
    .param p3, "endValue"    # Ljava/lang/Number;

    .prologue
    .line 20
    iget v4, p0, Lcom/tencent/qrom/animation/ease/BaseEase;->mDuration:F

    mul-float v3, v4, p1

    .line 21
    .local v3, "t":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 22
    .local v0, "b":F
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float v1, v4, v5

    .line 23
    .local v1, "c":F
    iget v2, p0, Lcom/tencent/qrom/animation/ease/BaseEase;->mDuration:F

    .line 24
    .local v2, "d":F
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/tencent/qrom/animation/ease/BaseEase;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qrom/animation/ease/BaseEase;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/tencent/qrom/animation/ease/BaseEase;->mDuration:F

    .line 16
    return-void
.end method
