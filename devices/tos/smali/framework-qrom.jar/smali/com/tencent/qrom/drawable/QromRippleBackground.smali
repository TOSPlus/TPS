.class Lcom/tencent/qrom/drawable/QromRippleBackground;
.super Ljava/lang/Object;
.source "QromRippleBackground.java"


# static fields
.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_OUTER_OPACITY_ENTER_VELOCITY:F = 10.0f

.field private static final WAVE_OUTER_OPACITY_EXIT_VELOCITY_MAX:F = 4.5f

.field private static final WAVE_OUTER_OPACITY_EXIT_VELOCITY_MIN:F = 1.5f

.field private static final WAVE_OUTER_SIZE_INFLUENCE_MAX:F = 200.0f

.field private static final WAVE_OUTER_SIZE_INFLUENCE_MIN:F = 40.0f


# instance fields
.field private mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanUseHardware:Z

.field private mColorAlpha:I

.field private mColorOpaque:I

.field private mDensity:F

.field private mHardwareAnimating:Z

.field private mHasMaxRadius:Z

.field private mOuterOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/qrom/drawable/QromRippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "owner"    # Lcom/tencent/qrom/drawable/QromRippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    .line 314
    new-instance v0, Lcom/tencent/qrom/drawable/QromRippleBackground$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/drawable/QromRippleBackground$2;-><init>(Lcom/tencent/qrom/drawable/QromRippleBackground;)V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 88
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

    .line 89
    iput-object p2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mBounds:Landroid/graphics/Rect;

    .line 90
    return-void
.end method

.method static synthetic access$000()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/qrom/drawable/QromRippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/drawable/QromRippleBackground;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromRippleBackground;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/qrom/drawable/QromRippleBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromRippleBackground;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tencent/qrom/drawable/QromRippleBackground;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/drawable/QromRippleBackground;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mHardwareAnimating:Z

    return p1
.end method

.method private cancelSoftwareAnimations()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 308
    :cond_0
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "hasContent":Z
    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mColorOpaque:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mColorAlpha:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 151
    .local v1, "outerAlpha":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 152
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterX:F

    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterY:F

    iget v4, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    const/4 v0, 0x1

    .line 158
    :cond_0
    return v0
.end method

.method private endSoftwareAnimations()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 232
    :cond_0
    return-void
.end method

.method private exitSoftware(III)V
    .locals 9
    .param p1, "opacityDuration"    # I
    .param p2, "inflectionDuration"    # I
    .param p3, "inflectionOpacity"    # I

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 243
    if-lez p2, :cond_2

    .line 245
    const-string v2, "outerOpacity"

    new-array v3, v6, [F

    int-to-float v4, p3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 247
    .local v1, "outerOpacityAnim":Landroid/animation/ObjectAnimator;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v8, :cond_0

    .line 248
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 250
    :cond_0
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    sget-object v2, Lcom/tencent/qrom/drawable/QromRippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    sub-int v0, p1, p2

    .line 255
    .local v0, "outerDuration":I
    if-lez v0, :cond_1

    .line 256
    new-instance v2, Lcom/tencent/qrom/drawable/QromRippleBackground$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qrom/drawable/QromRippleBackground$1;-><init>(Lcom/tencent/qrom/drawable/QromRippleBackground;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    .end local v0    # "outerDuration":I
    :goto_0
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 292
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 293
    return-void

    .line 279
    .restart local v0    # "outerDuration":I
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 282
    .end local v0    # "outerDuration":I
    .end local v1    # "outerOpacityAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v2, "outerOpacity"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 283
    .restart local v1    # "outerOpacityAnim":Landroid/animation/ObjectAnimator;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v8, :cond_3

    .line 284
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 286
    :cond_3
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getTempPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mTempPaint:Landroid/graphics/Paint;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mTempPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private invalidateSelf()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOwner:Lcom/tencent/qrom/drawable/QromRippleDrawable;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 312
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->cancelSoftwareAnimations()V

    .line 301
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromRippleBackground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v0

    .line 138
    .local v0, "hasContent":Z
    return v0
.end method

.method public enter()V
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->cancel()V

    .line 177
    const/16 v1, 0x64

    .line 178
    .local v1, "outerDuration":I
    const-string v2, "outerOpacity"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 179
    .local v0, "outer":Landroid/animation/ObjectAnimator;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 182
    :cond_0
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    sget-object v2, Lcom/tencent/qrom/drawable/QromRippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    .line 190
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 191
    return-void

    .line 178
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public exit()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 197
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->cancel()V

    .line 201
    const/16 v2, 0x14d

    .line 202
    .local v2, "opacityDuration":I
    iget v5, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mDensity:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x43480000    # 200.0f

    iget v7, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mDensity:F

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6, v9}, Lcom/tencent/qrom/utils/MathUtils;->constrain(FFF)F

    move-result v4

    .line 205
    .local v4, "outerSizeInfluence":F
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v6, 0x40900000    # 4.5f

    invoke-static {v5, v6, v4}, Lcom/tencent/qrom/utils/MathUtils;->lerp(FFF)F

    move-result v3

    .line 211
    .local v3, "outerOpacityVelocity":F
    const/4 v5, 0x0

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    sub-float v6, v9, v6

    mul-float/2addr v6, v10

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v7, v3

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    .local v0, "inflectionDuration":I
    iget v5, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mColorAlpha:I

    int-to-float v5, v5

    iget v6, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    int-to-float v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v4

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v1, v5

    .line 216
    .local v1, "inflectionOpacity":I
    const/16 v5, 0x14d

    invoke-direct {p0, v5, v0, v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->exitSoftware(III)V

    .line 217
    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 165
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterX:F

    float-to-int v0, v3

    .line 166
    .local v0, "outerX":I
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterY:F

    float-to-int v1, v3

    .line 167
    .local v1, "outerY":I
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 168
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    return-void
.end method

.method public getOuterOpacity()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    return v0
.end method

.method public isHardwareAnimating()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mHardwareAnimating:Z

    return v0
.end method

.method public jump()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->endSoftwareAnimations()V

    .line 225
    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 115
    iget-boolean v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mHasMaxRadius:Z

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 117
    .local v1, "halfWidth":F
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 118
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    .line 120
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    :cond_0
    return-void
.end method

.method public setOuterOpacity(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    .line 125
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->invalidateSelf()V

    .line 126
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

    .line 93
    const/high16 v2, -0x1000000

    or-int/2addr v2, p2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mColorOpaque:I

    .line 94
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mColorAlpha:I

    .line 96
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mHasMaxRadius:Z

    .line 98
    int-to-float v2, p1

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    .line 105
    :goto_0
    iput v4, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterX:F

    .line 106
    iput v4, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterY:F

    .line 107
    iput p3, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mDensity:F

    .line 108
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 101
    .local v1, "halfWidth":F
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 102
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    goto :goto_0
.end method

.method public shouldDraw()Z
    .locals 3

    .prologue
    .line 142
    iget v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mColorAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 143
    .local v0, "outerAlpha":I
    iget-boolean v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mCanUseHardware:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mHardwareAnimating:Z

    if-nez v1, :cond_1

    :cond_0
    if-lez v0, :cond_2

    iget v1, p0, Lcom/tencent/qrom/drawable/QromRippleBackground;->mOuterRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
