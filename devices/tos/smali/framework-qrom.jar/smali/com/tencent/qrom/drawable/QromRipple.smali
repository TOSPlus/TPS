.class Lcom/tencent/qrom/drawable/QromRipple;
.super Ljava/lang/Object;
.source "QromRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/drawable/QromRipple$LogInterpolator;
    }
.end annotation


# static fields
.field private static final DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final RIPPLE_ENTER_DELAY:J = 0x50L

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 2048.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 2048.0f


# instance fields
.field private mAnimOpacity:Landroid/animation/ObjectAnimator;

.field private mAnimRadius:Landroid/animation/ObjectAnimator;

.field private mAnimX:Landroid/animation/ObjectAnimator;

.field private mAnimY:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanUseHardware:Z

.field private mCanceled:Z

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mColorOpaque:I

.field private mDensity:F

.field private mHardwareAnimating:Z

.field private mHasMaxRadius:Z

.field private mOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

.field private mStartingX:F

.field private mStartingY:F

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/qrom/drawable/QromRipple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 38
    new-instance v0, Lcom/tencent/qrom/drawable/QromRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/drawable/QromRipple$LogInterpolator;-><init>(Lcom/tencent/qrom/drawable/QromRipple$1;)V

    sput-object v0, Lcom/tencent/qrom/drawable/QromRipple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/graphics/Rect;FF)V
    .locals 2
    .param p1, "owner"    # Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOpacity:F

    .line 81
    iput v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenRadius:F

    .line 82
    iput v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenX:F

    .line 83
    iput v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenY:F

    .line 440
    new-instance v0, Lcom/tencent/qrom/drawable/QromRipple$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/drawable/QromRipple$1;-><init>(Lcom/tencent/qrom/drawable/QromRipple;)V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 101
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

    .line 102
    iput-object p2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    .line 104
    iput p3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingX:F

    .line 105
    iput p4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingY:F

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/drawable/QromRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromRipple;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->removeSelf()V

    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 410
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 415
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 420
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 425
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 427
    :cond_3
    return-void
.end method

.method private clampStartingPosition()V
    .locals 11

    .prologue
    .line 132
    iget-object v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 133
    .local v2, "cX":F
    iget-object v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 134
    .local v3, "cY":F
    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingX:F

    sub-float v4, v7, v2

    .line 135
    .local v4, "dX":F
    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingY:F

    sub-float v5, v7, v3

    .line 136
    .local v5, "dY":F
    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    .line 137
    .local v6, "r":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 139
    float-to-double v7, v5

    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 140
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v6

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v2

    iput v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mClampedStartingX:F

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v6

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v3

    iput v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mClampedStartingY:F

    .line 146
    .end local v0    # "angle":D
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingX:F

    iput v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mClampedStartingX:F

    .line 144
    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingY:F

    iput v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mClampedStartingY:F

    goto :goto_0
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "hasContent":Z
    iget v5, p0, Lcom/tencent/qrom/drawable/QromRipple;->mColorOpaque:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    const/high16 v5, 0x437f0000    # 255.0f

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOpacity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 213
    .local v0, "alpha":I
    iget v5, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenRadius:F

    invoke-static {v7, v5, v6}, Lcom/tencent/qrom/utils/MathUtils;->lerp(FFF)F

    move-result v2

    .line 214
    .local v2, "radius":F
    if-lez v0, :cond_0

    cmpl-float v5, v2, v7

    if-lez v5, :cond_0

    .line 215
    iget v5, p0, Lcom/tencent/qrom/drawable/QromRipple;->mClampedStartingX:F

    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterX:F

    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenX:F

    invoke-static {v5, v6, v7}, Lcom/tencent/qrom/utils/MathUtils;->lerp(FFF)F

    move-result v3

    .line 217
    .local v3, "x":F
    iget v5, p0, Lcom/tencent/qrom/drawable/QromRipple;->mClampedStartingY:F

    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterY:F

    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenY:F

    invoke-static {v5, v6, v7}, Lcom/tencent/qrom/utils/MathUtils;->lerp(FFF)F

    move-result v4

    .line 219
    .local v4, "y":F
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    const/4 v1, 0x1

    .line 225
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return v1
.end method

.method private endSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 330
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 335
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 340
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 345
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 347
    :cond_3
    return-void
.end method

.method private exitSoftware(II)V
    .locals 10
    .param p1, "radiusDuration"    # I
    .param p2, "opacityDuration"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v9, 0x11

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 357
    const-string v4, "radiusGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 358
    .local v1, "radiusAnim":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v9, :cond_0

    .line 359
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 361
    :cond_0
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 362
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    const-string v4, "xGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 365
    .local v2, "xAnim":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v9, :cond_1

    .line 366
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 368
    :cond_1
    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    const-string v4, "yGravity"

    new-array v5, v7, [F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 372
    .local v3, "yAnim":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v9, :cond_2

    .line 373
    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 375
    :cond_2
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 376
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    const-string v4, "opacity"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 379
    .local v0, "opacityAnim":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v9, :cond_3

    .line 380
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 382
    :cond_3
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 383
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 384
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 387
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    .line 388
    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 389
    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 391
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 392
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 393
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 394
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 395
    return-void
.end method

.method private getTempPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTempPaint:Landroid/graphics/Paint;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTempPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 438
    return-void
.end method

.method private removeSelf()V
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mCanceled:Z

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->removeRipple(Lcom/tencent/qrom/drawable/QromRipple;)V

    .line 434
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mCanceled:Z

    .line 403
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->cancelSoftwareAnimations()V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mCanceled:Z

    .line 405
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromRipple;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v0

    .line 205
    .local v0, "hasContent":Z
    return v0
.end method

.method public enter()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x50

    const/16 v11, 0x11

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRipple;->cancel()V

    .line 255
    const-wide v4, 0x408f400000000000L    # 1000.0

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    const/high16 v7, 0x45000000    # 2048.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mDensity:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 259
    .local v3, "radiusDuration":I
    const-string v4, "radiusGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 260
    .local v2, "radius":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v11, :cond_0

    .line 261
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 263
    :cond_0
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 267
    const-string v4, "xGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 268
    .local v0, "cX":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v11, :cond_1

    .line 269
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 271
    :cond_1
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 275
    const-string v4, "yGravity"

    new-array v5, v8, [F

    aput v9, v5, v10

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 276
    .local v1, "cY":Landroid/animation/ObjectAnimator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v11, :cond_2

    .line 277
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 279
    :cond_2
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    sget-object v4, Lcom/tencent/qrom/drawable/QromRipple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 283
    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    .line 284
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimX:Landroid/animation/ObjectAnimator;

    .line 285
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimY:Landroid/animation/ObjectAnimator;

    .line 290
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 291
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 292
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 293
    return-void
.end method

.method public exit()V
    .locals 8

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRipple;->cancel()V

    .line 301
    const/4 v4, 0x0

    iget v5, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenRadius:F

    invoke-static {v4, v5, v6}, Lcom/tencent/qrom/utils/MathUtils;->lerp(FFF)F

    move-result v1

    .line 303
    .local v1, "radius":F
    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    iget v4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    sub-float v3, v4, v1

    .line 309
    .local v3, "remaining":F
    :goto_0
    const-wide v4, 0x408f400000000000L    # 1000.0

    const/high16 v6, 0x45800000    # 4096.0f

    div-float v6, v3, v6

    iget v7, p0, Lcom/tencent/qrom/drawable/QromRipple;->mDensity:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 311
    .local v2, "radiusDuration":I
    const/high16 v4, 0x447a0000    # 1000.0f

    iget v5, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOpacity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 314
    .local v0, "opacityDuration":I
    invoke-direct {p0, v2, v0}, Lcom/tencent/qrom/drawable/QromRipple;->exitSoftware(II)V

    .line 315
    return-void

    .line 306
    .end local v0    # "opacityDuration":I
    .end local v2    # "radiusDuration":I
    .end local v3    # "remaining":F
    :cond_0
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    .restart local v3    # "remaining":F
    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 232
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterX:F

    float-to-int v0, v3

    .line 233
    .local v0, "outerX":I
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterY:F

    float-to-int v1, v3

    .line 234
    .local v1, "outerY":I
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 235
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    return-void
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOpacity:F

    return v0
.end method

.method public getRadiusGravity()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenRadius:F

    return v0
.end method

.method public getXGravity()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenX:F

    return v0
.end method

.method public getYGravity()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenY:F

    return v0
.end method

.method public isHardwareAnimating()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mHardwareAnimating:Z

    return v0
.end method

.method public jump()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mCanceled:Z

    .line 323
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->endSoftwareAnimations()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRipple;->mCanceled:Z

    .line 325
    return-void
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 243
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingX:F

    .line 244
    iput p2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mStartingY:F

    .line 246
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->clampStartingPosition()V

    .line 247
    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 149
    iget-boolean v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mHasMaxRadius:Z

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 151
    .local v1, "halfWidth":F
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 152
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    .line 154
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->clampStartingPosition()V

    .line 156
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOpacity:F

    .line 160
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->invalidateSelf()V

    .line 161
    return-void
.end method

.method public setRadiusGravity(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenRadius:F

    .line 170
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->invalidateSelf()V

    .line 171
    return-void
.end method

.method public setXGravity(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 180
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenX:F

    .line 181
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->invalidateSelf()V

    .line 182
    return-void
.end method

.method public setYGravity(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRipple;->mTweenY:F

    .line 192
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->invalidateSelf()V

    .line 193
    return-void
.end method

.method public setup(IIF)V
    .locals 5
    .param p1, "maxRadius"    # I
    .param p2, "color"    # I
    .param p3, "density"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 109
    const/high16 v2, -0x1000000

    or-int/2addr v2, p2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mColorOpaque:I

    .line 111
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mHasMaxRadius:Z

    .line 113
    int-to-float v2, p1

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    .line 120
    :goto_0
    iput v4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterX:F

    .line 121
    iput v4, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterY:F

    .line 122
    iput p3, p0, Lcom/tencent/qrom/drawable/QromRipple;->mDensity:F

    .line 124
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRipple;->clampStartingPosition()V

    .line 125
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 116
    .local v1, "halfWidth":F
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 117
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRipple;->mOuterRadius:F

    goto :goto_0
.end method
