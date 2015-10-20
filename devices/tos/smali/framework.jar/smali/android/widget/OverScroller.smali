.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    .line 75
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 76
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 77
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 514
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 515
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    const/4 v6, 0x0

    .line 340
    :goto_0
    return v6

    .line 296
    :cond_0
    iget v6, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 340
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 301
    .local v4, "time":J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 303
    .local v1, "elapsedTime":J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 304
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 305
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 307
    .local v3, "q":F
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 308
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 313
    :goto_2
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 314
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 310
    :cond_2
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 316
    .end local v3    # "q":F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_1

    .line 321
    .end local v0    # "duration":I
    .end local v1    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 322
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 323
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 324
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 329
    :cond_4
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 330
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 331
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 332
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 248
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 249
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 403
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 404
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 438
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 439
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 441
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 442
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 446
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 447
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 448
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 449
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    .line 150
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 177
    .local v0, "squaredNorm":F
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 178
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 534
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 535
    .local v0, "dx":I
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 536
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 465
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 466
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 482
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 483
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 267
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 285
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 127
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 128
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 116
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 393
    iput v2, p0, Landroid/widget/OverScroller;->mMode:I

    .line 396
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 397
    .local v0, "spingbackX":Z
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 398
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 358
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 359
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 375
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 376
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 377
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 378
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 525
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 526
    .local v2, "time":J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 527
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
