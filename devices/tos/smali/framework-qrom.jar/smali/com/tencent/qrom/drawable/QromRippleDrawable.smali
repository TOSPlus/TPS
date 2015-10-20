.class public Lcom/tencent/qrom/drawable/QromRippleDrawable;
.super Lcom/tencent/qrom/drawable/QromLayerDrawable;
.source "QromRippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/drawable/QromRippleDrawable$1;,
        Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final DST_IN:Landroid/graphics/PorterDuffXfermode;

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1

.field private static final SRC_ATOP:Landroid/graphics/PorterDuffXfermode;

.field private static final SRC_OVER:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

.field private mBackgroundActive:Z

.field mBottomPadding:I

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field mLeftPadding:I

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskingPaint:Landroid/graphics/Paint;

.field private mNeedsDraw:Z

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field mRightPadding:I

.field private mRipple:Lcom/tencent/qrom/drawable/QromRipple;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;

.field mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    .line 91
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->SRC_ATOP:Landroid/graphics/PorterDuffXfermode;

    .line 92
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    new-instance v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    invoke-direct {v0, v1, v1, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    new-instance v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    invoke-direct {v0, v2, v2, v2}, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v2, v2}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    .line 194
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 197
    :cond_1
    if-eqz p3, :cond_2

    .line 198
    const v7, 0x7a090159    # 1.77843E35f

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 201
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 202
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->ensurePadding()V

    .line 203
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->initializeFromState()V

    .line 204
    return-void
.end method

.method private constructor <init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v3, 0x0

    .line 988
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;-><init>()V

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 108
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 144
    iput v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 153
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDensity:F

    .line 165
    iput v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLeftPadding:I

    .line 166
    iput v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mTopPadding:I

    .line 167
    iput v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRightPadding:I

    .line 168
    iput v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBottomPadding:I

    .line 989
    const/4 v0, 0x0

    .line 992
    .local v0, "needsTheme":Z
    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 993
    new-instance v1, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V

    .line 994
    .local v1, "ns":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    const/4 v0, 0x1

    .line 1004
    :goto_0
    if-eqz p2, :cond_0

    .line 1005
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDensity:F

    .line 1008
    :cond_0
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    .line 1009
    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    .line 1011
    iget v2, v1, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mNum:I

    if-lez v2, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->ensurePadding()V

    .line 1019
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->initializeFromState()V

    .line 1020
    return-void

    .line 995
    .end local v1    # "ns":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    :cond_2
    if-nez p1, :cond_3

    .line 996
    new-instance v1, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p2}, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V

    .restart local v1    # "ns":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    goto :goto_0

    .line 1001
    .end local v1    # "ns":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    :cond_3
    new-instance v1, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V

    .restart local v1    # "ns":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/tencent/qrom/drawable/QromRippleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/content/res/Resources$Theme;
    .param p4, "x3"    # Lcom/tencent/qrom/drawable/QromRippleDrawable$1;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method private cancelExitingRipples()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, "needsDraw":Z
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 232
    .local v0, "count":I
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    .line 233
    .local v3, "ripples":[Lcom/tencent/qrom/drawable/QromRipple;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 234
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/tencent/qrom/drawable/QromRipple;->isHardwareAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 235
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/tencent/qrom/drawable/QromRipple;->cancel()V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    if-eqz v3, :cond_1

    .line 239
    const/4 v4, 0x0

    invoke-static {v3, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 241
    :cond_1
    iput v5, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 243
    return v2
.end method

.method private clearHotspots()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 569
    const/4 v0, 0x0

    .line 571
    .local v0, "needsDraw":Z
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRipple;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 573
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRipple;->cancel()V

    .line 574
    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 579
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->cancel()V

    .line 580
    iput-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->cancelExitingRipples()Z

    move-result v1

    or-int/2addr v0, v1

    .line 585
    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mNeedsDraw:Z

    .line 586
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 587
    return-void
.end method

.method private drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;Z)I
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;
    .param p4, "drawMask"    # Z

    .prologue
    .line 762
    const/4 v7, -0x1

    .line 764
    .local v7, "saveCount":I
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    if-nez p4, :cond_0

    sget-object v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    if-eq p3, v0, :cond_1

    .line 768
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    invoke-direct {p0, p3}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    .line 773
    .local v8, "x":F
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    .line 774
    .local v9, "y":F
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 775
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 776
    neg-float v0, v8

    neg-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 779
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_2
    return v7
.end method

.method private drawContentLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget-object v7, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mChildren:[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;

    .line 726
    .local v7, "array":[Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v8, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    .line 730
    .local v8, "count":I
    const/4 v10, 0x0

    .line 731
    .local v10, "needsLayer":Z
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 732
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 733
    aget-object v0, v7, v9

    iget v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    const v1, 0x7a090159    # 1.77843E35f

    if-eq v0, v1, :cond_5

    aget-object v0, v7, v9

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 735
    const/4 v10, 0x1

    .line 741
    .end local v9    # "i":I
    :cond_1
    invoke-direct {p0, p3}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v5

    .line 743
    .local v5, "maskingPaint":Landroid/graphics/Paint;
    const/16 v0, 0x1000

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/16 v0, 0x1000

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 744
    :cond_2
    const/4 v10, 0x0

    .line 747
    :cond_3
    if-eqz v10, :cond_6

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v11

    .line 751
    .local v11, "restoreToCount":I
    :goto_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v8, :cond_7

    .line 752
    aget-object v0, v7, v9

    iget v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mId:I

    const v1, 0x7a090159    # 1.77843E35f

    if-eq v0, v1, :cond_4

    .line 753
    aget-object v0, v7, v9

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromLayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 732
    .end local v5    # "maskingPaint":Landroid/graphics/Paint;
    .end local v11    # "restoreToCount":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 747
    .end local v9    # "i":I
    .restart local v5    # "maskingPaint":Landroid/graphics/Paint;
    :cond_6
    const/4 v11, -0x1

    goto :goto_1

    .line 757
    .restart local v9    # "i":I
    .restart local v11    # "restoreToCount":I
    :cond_7
    return v11
.end method

.method private drawMaskingLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    .line 841
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    invoke-direct {p0, p3}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 845
    .local v7, "restoreToCount":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 847
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 849
    return v7
.end method

.method private drawRippleLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;Z)I
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "mode"    # Landroid/graphics/PorterDuffXfermode;
    .param p4, "hasMask"    # Z

    .prologue
    .line 783
    const/4 v12, 0x0

    .line 784
    .local v12, "drewRipples":Z
    const/4 v15, -0x1

    .line 785
    .local v15, "restoreToCount":I
    const/16 v16, -0x1

    .line 788
    .local v16, "restoreTranslate":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 789
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    move-object/from16 v18, v0

    .line 790
    .local v18, "ripples":[Lcom/tencent/qrom/drawable/QromRipple;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-gt v13, v11, :cond_3

    .line 792
    if-ge v13, v11, :cond_2

    .line 793
    aget-object v17, v18, v13

    .line 802
    .local v17, "ripple":Lcom/tencent/qrom/drawable/QromRipple;
    :goto_1
    if-gez v15, :cond_0

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;

    move-result-object v7

    .line 804
    .local v7, "maskingPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget-object v2, v2, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 805
    .local v10, "color":I
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 806
    .local v9, "alpha":I
    div-int/lit8 v2, v9, 0x2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 809
    mul-int/lit8 v14, v9, 0x2

    .line 810
    .local v14, "itemAlpha":I
    const/16 v2, 0xff

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 815
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v15

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 823
    .end local v7    # "maskingPaint":Landroid/graphics/Paint;
    .end local v9    # "alpha":I
    .end local v10    # "color":I
    .end local v14    # "itemAlpha":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/drawable/QromRipple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v2

    or-int/2addr v12, v2

    .line 790
    .end local v17    # "ripple":Lcom/tencent/qrom/drawable/QromRipple;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 794
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v2, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    move-object/from16 v17, v0

    .restart local v17    # "ripple":Lcom/tencent/qrom/drawable/QromRipple;
    goto :goto_1

    .line 827
    .end local v17    # "ripple":Lcom/tencent/qrom/drawable/QromRipple;
    :cond_3
    if-ltz v16, :cond_4

    .line 828
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 832
    :cond_4
    if-ltz v15, :cond_5

    if-nez v12, :cond_5

    .line 833
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 834
    const/4 v15, -0x1

    .line 837
    :cond_5
    return v15
.end method

.method private getMaskingPaint(Landroid/graphics/PorterDuffXfermode;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "xfermode"    # Landroid/graphics/PorterDuffXfermode;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 865
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 866
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMaskingPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getRippleIndex(Lcom/tencent/qrom/drawable/QromRipple;)I
    .locals 4
    .param p1, "ripple"    # Lcom/tencent/qrom/drawable/QromRipple;

    .prologue
    .line 714
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    .line 715
    .local v2, "ripples":[Lcom/tencent/qrom/drawable/QromRipple;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 716
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 717
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 721
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 716
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 855
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private initializeFromState()V
    .locals 1

    .prologue
    .line 1024
    const v0, 0x7a090159    # 1.77843E35f

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1025
    return-void
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    .prologue
    .line 607
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 608
    .local v0, "count":I
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    .line 609
    .local v2, "ripples":[Lcom/tencent/qrom/drawable/QromRipple;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 610
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/tencent/qrom/drawable/QromRipple;->onHotspotBoundsChanged()V

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v3}, Lcom/tencent/qrom/drawable/QromRipple;->onHotspotBoundsChanged()V

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-eqz v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v3}, Lcom/tencent/qrom/drawable/QromRippleBackground;->onHotspotBoundsChanged()V

    .line 620
    :cond_2
    return-void
.end method

.method private setBackgroundActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_0

    .line 305
    iput-boolean p1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackgroundActive:Z

    .line 306
    if-eqz p1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->tryBackgroundEnter()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->tryBackgroundExit()V

    goto :goto_0
.end method

.method private setRippleActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_0

    .line 294
    iput-boolean p1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRippleActive:Z

    .line 295
    if-eqz p1, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->tryRippleEnter()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->tryRippleExit()V

    goto :goto_0
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 452
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 453
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDensity:F

    .line 454
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 456
    :cond_0
    return-void
.end method

.method private tryBackgroundEnter()V
    .locals 4

    .prologue
    .line 502
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-nez v1, :cond_0

    .line 503
    new-instance v1, Lcom/tencent/qrom/drawable/QromRippleBackground;

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v1, p0, v2}, Lcom/tencent/qrom/drawable/QromRippleBackground;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget-object v1, v1, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 508
    .local v0, "color":I
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget v2, v2, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDensity:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/qrom/drawable/QromRippleBackground;->setup(IIF)V

    .line 509
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->enter()V

    .line 510
    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromRippleBackground;->exit()V

    .line 517
    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 524
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 547
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-nez v3, :cond_1

    .line 533
    iget-boolean v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHasPending:Z

    if-eqz v3, :cond_2

    .line 534
    iput-boolean v5, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHasPending:Z

    .line 535
    iget v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mPendingX:F

    .line 536
    .local v1, "x":F
    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mPendingY:F

    .line 541
    .local v2, "y":F
    :goto_1
    new-instance v3, Lcom/tencent/qrom/drawable/QromRipple;

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/tencent/qrom/drawable/QromRipple;-><init>(Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/graphics/Rect;FF)V

    iput-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    .line 544
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget-object v3, v3, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 545
    .local v0, "color":I
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    iget-object v4, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget v4, v4, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    iget v5, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDensity:F

    invoke-virtual {v3, v4, v0, v5}, Lcom/tencent/qrom/drawable/QromRipple;->setup(IIF)V

    .line 546
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v3}, Lcom/tencent/qrom/drawable/QromRipple;->enter()V

    goto :goto_0

    .line 538
    .end local v0    # "color":I
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 539
    .restart local v1    # "x":F
    iget-object v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .restart local v2    # "y":F
    goto :goto_1
.end method

.method private tryRippleExit()V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    if-nez v0, :cond_0

    .line 556
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/tencent/qrom/drawable/QromRipple;

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    iget v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    aput-object v2, v0, v1

    .line 559
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v0}, Lcom/tencent/qrom/drawable/QromRipple;->exit()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    .line 562
    :cond_1
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    .line 426
    .local v1, "state":Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 427
    .local v0, "color":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 428
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iput-object v0, v2, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 436
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget-object v0, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 441
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    return-void
.end method


# virtual methods
.method bridge synthetic createConstantState(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;)Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .locals 1
    .param p1, "x0"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p2, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->createConstantState(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;)Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    move-result-object v0

    return-object v0
.end method

.method createConstantState(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Landroid/content/res/Resources;)Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;
    .locals 1
    .param p1, "state"    # Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 920
    new-instance v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;-><init>(Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;Lcom/tencent/qrom/drawable/QromRippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 643
    iget-object v11, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    move v5, v9

    .line 644
    .local v5, "hasMask":Z
    :goto_0
    iget-object v11, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    iget v12, v11, Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;->mNum:I

    if-eqz v5, :cond_7

    move v11, v9

    :goto_1
    if-le v12, v11, :cond_8

    move v4, v9

    .line 645
    .local v4, "drawNonMaskContent":Z
    :goto_2
    if-eqz v5, :cond_9

    iget-object v11, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    move v3, v9

    .line 646
    .local v3, "drawMask":Z
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->qromGetDirtyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 647
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->save(I)I

    move-result v7

    .line 648
    .local v7, "saveCount":I
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 652
    if-eqz v4, :cond_a

    .line 653
    sget-object v9, Lcom/tencent/qrom/drawable/QromRippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, v1, v9}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->drawContentLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    move-result v2

    .line 660
    .local v2, "contentLayer":I
    :goto_4
    if-nez v5, :cond_0

    if-nez v4, :cond_b

    :cond_0
    sget-object v8, Lcom/tencent/qrom/drawable/QromRippleDrawable;->SRC_OVER:Landroid/graphics/PorterDuffXfermode;

    .line 663
    .local v8, "xfermode":Landroid/graphics/PorterDuffXfermode;
    :goto_5
    invoke-direct {p0, p1, v1, v8, v3}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->drawBackgroundLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;Z)I

    move-result v0

    .line 664
    .local v0, "backgroundLayer":I
    if-ltz v0, :cond_2

    .line 665
    if-eqz v3, :cond_1

    .line 666
    sget-object v9, Lcom/tencent/qrom/drawable/QromRippleDrawable;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, v1, v9}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->drawMaskingLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    .line 668
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 672
    :cond_2
    invoke-direct {p0, p1, v1, v8, v5}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->drawRippleLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;Z)I

    move-result v6

    .line 673
    .local v6, "rippleLayer":I
    if-ltz v6, :cond_4

    .line 674
    if-eqz v3, :cond_3

    .line 675
    sget-object v9, Lcom/tencent/qrom/drawable/QromRippleDrawable;->DST_IN:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, v1, v9}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->drawMaskingLayer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/PorterDuffXfermode;)I

    .line 677
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 682
    :cond_4
    if-gez v2, :cond_5

    if-gez v0, :cond_5

    if-gez v6, :cond_5

    iget-boolean v9, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mNeedsDraw:Z

    if-eqz v9, :cond_5

    .line 683
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 687
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 689
    :cond_5
    iput-boolean v10, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mNeedsDraw:Z

    .line 691
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 692
    return-void

    .end local v0    # "backgroundLayer":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "contentLayer":I
    .end local v3    # "drawMask":Z
    .end local v4    # "drawNonMaskContent":Z
    .end local v5    # "hasMask":Z
    .end local v6    # "rippleLayer":I
    .end local v7    # "saveCount":I
    .end local v8    # "xfermode":Landroid/graphics/PorterDuffXfermode;
    :cond_6
    move v5, v10

    .line 643
    goto :goto_0

    .restart local v5    # "hasMask":Z
    :cond_7
    move v11, v10

    .line 644
    goto :goto_1

    :cond_8
    move v4, v10

    goto :goto_2

    .restart local v4    # "drawNonMaskContent":Z
    :cond_9
    move v3, v10

    .line 645
    goto :goto_3

    .line 655
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v3    # "drawMask":Z
    .restart local v7    # "saveCount":I
    :cond_a
    const/4 v2, -0x1

    .restart local v2    # "contentLayer":I
    goto :goto_4

    .line 660
    :cond_b
    sget-object v8, Lcom/tencent/qrom/drawable/QromRippleDrawable;->SRC_ATOP:Landroid/graphics/PorterDuffXfermode;

    goto :goto_5
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    return-object v0
.end method

.method public getMaxRadius()I
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iget v0, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1029
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLeftPadding:I

    iget v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mTopPadding:I

    iget v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRightPadding:I

    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBottomPadding:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v1, Lcom/tencent/qrom/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->setPaddingMode(I)V

    .line 376
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 378
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 379
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->initializeFromState()V

    .line 380
    return-void
.end method

.method public isProjected()Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->jumpToCurrentState()V

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "needsDraw":Z
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRipple;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRipple;->jump()V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->isHardwareAnimating()Z

    move-result v1

    or-int/2addr v0, v1

    .line 219
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    invoke-virtual {v1}, Lcom/tencent/qrom/drawable/QromRippleBackground;->jump()V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->cancelExitingRipples()Z

    move-result v1

    or-int/2addr v0, v1

    .line 224
    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mNeedsDraw:Z

    .line 225
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 226
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 910
    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 914
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLayerState:Lcom/tencent/qrom/drawable/QromLayerDrawable$QromLayerState;

    check-cast v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iput-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    .line 915
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 318
    iget-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->onHotspotBoundsChanged()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 324
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 268
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->onStateChange([I)Z

    move-result v1

    .line 270
    .local v1, "changed":Z
    const/4 v2, 0x0

    .line 271
    .local v2, "enabled":Z
    const/4 v6, 0x0

    .line 272
    .local v6, "pressed":Z
    const/4 v3, 0x0

    .line 274
    .local v3, "focused":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget v7, v0, v4

    .line 275
    .local v7, "state":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_0

    .line 276
    const/4 v2, 0x1

    .line 278
    :cond_0
    const v8, 0x101009c

    if-ne v7, v8, :cond_1

    .line 279
    const/4 v3, 0x1

    .line 281
    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    .line 282
    const/4 v6, 0x1

    .line 274
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    .end local v7    # "state":I
    :cond_3
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    move v8, v9

    :goto_1
    invoke-direct {p0, v8}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->setRippleActive(Z)V

    .line 287
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    :cond_4
    move v10, v9

    :cond_5
    invoke-direct {p0, v10}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->setBackgroundActive(Z)V

    .line 289
    return v1

    :cond_6
    move v8, v10

    .line 286
    goto :goto_1
.end method

.method public qromGetDirtyBounds()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->isProjected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 871
    iget-object v6, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 872
    .local v6, "drawingBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 873
    .local v5, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 874
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 876
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    float-to-int v3, v9

    .line 877
    .local v3, "cX":I
    iget-object v9, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-int v4, v9

    .line 878
    .local v4, "cY":I
    iget-object v8, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 880
    .local v8, "rippleBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    .line 881
    .local v1, "activeRipples":[Lcom/tencent/qrom/drawable/QromRipple;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 882
    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 883
    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Lcom/tencent/qrom/drawable/QromRipple;->getBounds(Landroid/graphics/Rect;)V

    .line 884
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 885
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 882
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    .line 889
    .local v2, "background":Lcom/tencent/qrom/drawable/QromRippleBackground;
    if-eqz v2, :cond_1

    .line 890
    invoke-virtual {v2, v8}, Lcom/tencent/qrom/drawable/QromRippleBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 891
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 892
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 895
    :cond_1
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 896
    invoke-super {p0}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 899
    .end local v0    # "N":I
    .end local v1    # "activeRipples":[Lcom/tencent/qrom/drawable/QromRipple;
    .end local v2    # "background":Lcom/tencent/qrom/drawable/QromRippleBackground;
    .end local v3    # "cX":I
    .end local v4    # "cY":I
    .end local v5    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v6    # "drawingBounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "rippleBounds":Landroid/graphics/Rect;
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_1
.end method

.method public qromGetHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 601
    return-void
.end method

.method public qromSetHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackground:Lcom/tencent/qrom/drawable/QromRippleBackground;

    if-nez v0, :cond_1

    .line 488
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mPendingX:F

    .line 489
    iput p2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mPendingY:F

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHasPending:Z

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRipple:Lcom/tencent/qrom/drawable/QromRipple;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/drawable/QromRipple;->move(FF)V

    .line 496
    :cond_2
    return-void
.end method

.method public qromSetHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mOverrideBounds:Z

    .line 592
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 594
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->onHotspotBoundsChanged()V

    .line 595
    return-void
.end method

.method removeRipple(Lcom/tencent/qrom/drawable/QromRipple;)V
    .locals 5
    .param p1, "ripple"    # Lcom/tencent/qrom/drawable/QromRipple;

    .prologue
    .line 701
    iget-object v2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipples:[Lcom/tencent/qrom/drawable/QromRipple;

    .line 702
    .local v2, "ripples":[Lcom/tencent/qrom/drawable/QromRipple;
    iget v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 703
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->getRippleIndex(Lcom/tencent/qrom/drawable/QromRipple;)I

    move-result v1

    .line 704
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 705
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    sub-int v4, v0, v4

    invoke-static {v2, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 707
    iget v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mExitingRipplesCount:I

    .line 709
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 711
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->setAlpha(I)V

    .line 251
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iput-object p1, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 358
    invoke-virtual {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->invalidateSelf()V

    .line 359
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 258
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const v0, 0x7a090159    # 1.77843E35f

    if-ne p1, v0, :cond_0

    .line 386
    iput-object p2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxRadius(I)V
    .locals 2
    .param p1, "maxRadius"    # I

    .prologue
    .line 971
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    .line 972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRadius must be RADIUS_AUTO or >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mState:Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;

    iput p1, v0, Lcom/tencent/qrom/drawable/QromRippleDrawable$RippleState;->mMaxRadius:I

    .line 976
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "topPadding"    # I
    .param p3, "rightPadding"    # I
    .param p4, "bottomPadding"    # I

    .prologue
    .line 1034
    iput p1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mLeftPadding:I

    .line 1035
    iput p2, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mTopPadding:I

    .line 1036
    iput p3, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRightPadding:I

    .line 1037
    iput p4, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBottomPadding:I

    .line 1038
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->setPaddingMode(I)V

    .line 412
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/drawable/QromLayerDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 330
    .local v0, "changed":Z
    if-nez p1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->clearHotspots()V

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    if-eqz v0, :cond_0

    .line 335
    iget-boolean v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->tryRippleEnter()V

    .line 339
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/qrom/drawable/QromRippleDrawable;->mBackgroundActive:Z

    if-eqz v1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/tencent/qrom/drawable/QromRippleDrawable;->tryBackgroundEnter()V

    goto :goto_0
.end method
