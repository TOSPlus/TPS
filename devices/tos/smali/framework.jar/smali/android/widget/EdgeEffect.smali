.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MIN_WIDTH:I = 0x12c

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0xc


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private final mEdgeHeight:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private final mGlowHeight:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mGlowWidth:I

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxEffectHeight:I

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x108047c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 140
    const v1, 0x108047d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 143
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 144
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    .line 146
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    .line 150
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    .line 151
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 152
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 382
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 383
    .local v3, "time":J
    iget-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 385
    .local v2, "t":F
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 387
    .local v1, "interp":F
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 388
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 389
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 390
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 392
    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 393
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 396
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 397
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 399
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 400
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 401
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 402
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 405
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 406
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 407
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 408
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 411
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 412
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 413
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 415
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 416
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 417
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 418
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 421
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 422
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 423
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 424
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 429
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 432
    .local v0, "factor":F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 435
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 429
    .end local v0    # "factor":F
    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 438
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 331
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 333
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 335
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    .line 338
    .local v2, "glowBottom":I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_2

    .line 340
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 341
    .local v3, "glowLeft":I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v3, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    .end local v3    # "glowLeft":I
    :goto_0
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 351
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 352
    .local v0, "edgeBottom":I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_3

    .line 354
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 355
    .local v1, "edgeLeft":I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v1

    invoke-virtual {v5, v1, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    .end local v1    # "edgeLeft":I
    :goto_1
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 363
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 366
    :cond_0
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 344
    .end local v0    # "edgeBottom":I
    :cond_2
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 358
    .restart local v0    # "edgeBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 194
    return-void
.end method

.method public getBounds(Z)Landroid/graphics/Rect;
    .locals 4
    .param p1, "reverse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mX:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mY:I

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    :cond_0
    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 378
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .param p1, "velocity"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 287
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 288
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 290
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 291
    const v0, 0x3e19999a    # 0.15f

    int-to-float v1, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 295
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 296
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 299
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 300
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 304
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 306
    const/high16 v0, 0x3f000000    # 0.5f

    mul-int/lit8 v1, p1, 0x8

    int-to-float v1, v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 313
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 315
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0xc

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 317
    return-void
.end method

.method public onPull(F)V
    .locals 10
    .param p1, "deltaDistance"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 207
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 208
    .local v2, "now":J
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 246
    :goto_0
    return-void

    .line 211
    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 212
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 214
    :cond_1
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 216
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 217
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 219
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 220
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 222
    .local v0, "distance":F
    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 223
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v0, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 226
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 230
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 231
    .local v1, "glowChange":F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 232
    neg-float v1, v1

    .line 234
    :cond_2
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 235
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 239
    :cond_3
    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 242
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 243
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 244
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 245
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 257
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 262
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 263
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 264
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 265
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 267
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 268
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 269
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 270
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 272
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 273
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 173
    iput p1, p0, Landroid/widget/EdgeEffect;->mX:I

    .line 174
    iput p2, p0, Landroid/widget/EdgeEffect;->mY:I

    .line 175
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 161
    iput p1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 162
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:I

    .line 163
    return-void
.end method
