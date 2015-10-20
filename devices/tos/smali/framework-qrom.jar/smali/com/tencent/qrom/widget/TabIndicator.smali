.class public Lcom/tencent/qrom/widget/TabIndicator;
.super Landroid/view/View;
.source "TabIndicator.java"

# interfaces
.implements Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/TabIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final FADE_FRAME_MS:I = 0x1e

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCurrentPage:I

.field private mFadeBy:I

.field private mFadeDelay:I

.field private mFadeLength:I

.field private final mFadeRunnable:Ljava/lang/Runnable;

.field private mFades:Z

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mTouchSlop:I

.field private mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/TabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0x7a0101e5

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/TabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    .line 46
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mLastMotionX:F

    .line 47
    const/4 v8, -0x1

    iput v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mActivePointerId:I

    .line 50
    new-instance v8, Lcom/tencent/qrom/widget/TabIndicator$1;

    invoke-direct {v8, p0}, Lcom/tencent/qrom/widget/TabIndicator$1;-><init>(Lcom/tencent/qrom/widget/TabIndicator;)V

    iput-object v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    .line 73
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 102
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 78
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x7a0a0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 79
    .local v5, "defaultFades":Z
    const v8, 0x7a0c0016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 80
    .local v3, "defaultFadeDelay":I
    const v8, 0x7a0c0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 81
    .local v4, "defaultFadeLength":I
    const v8, 0x7a0b002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 82
    .local v6, "defaultSelectedColor":I
    const v8, 0x7a020271

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    sget-object v8, Lcom/tencent/qrom/R$styleable;->TabIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/TabIndicator;->setFades(Z)V

    .line 88
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/TabIndicator;->setSelectedColor(I)V

    .line 89
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/TabIndicator;->setFadeDelay(I)V

    .line 90
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/widget/TabIndicator;->setFadeLength(I)V

    .line 92
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 93
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/TabIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 101
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v2}, Lcom/tencent/qrom/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v8

    iput v8, p0, Lcom/tencent/qrom/widget/TabIndicator;->mTouchSlop:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/TabIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TabIndicator;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/TabIndicator;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TabIndicator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/TabIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TabIndicator;

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeBy:I

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/TabIndicator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TabIndicator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getFadeDelay()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeDelay:I

    return v0
.end method

.method public getFadeLength()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeLength:I

    return v0
.end method

.method public getFades()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 315
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v3}, Lcom/tencent/qrom/support/v4/view/ViewPager;->getAdapter()Lcom/tencent/qrom/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qrom/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    .line 155
    .local v9, "count":I
    if-eqz v9, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    if-lt v3, v9, :cond_2

    .line 160
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/TabIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getPaddingLeft()I

    move-result v16

    .line 165
    .local v16, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getWidth()I

    move-result v3

    sub-int v3, v3, v16

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getPaddingRight()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v8, v8, v18

    div-float v17, v3, v8

    .line 166
    .local v17, "pageWidth":F
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/TabIndicator;->mPositionOffset:F

    move/from16 v18, v0

    add-float v8, v8, v18

    mul-float v8, v8, v17

    add-float v4, v3, v8

    .line 167
    .local v4, "left":F
    add-float v6, v4, v17

    .line 168
    .local v6, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v5, v3

    .line 169
    .local v5, "top":F
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v7, v3

    .line 170
    .local v7, "bottom":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v15, v3

    .line 174
    .local v15, "drawableWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v11, v3

    .line 175
    .local v11, "drawableHeight":F
    cmpl-float v3, v15, v17

    if-lez v3, :cond_3

    .line 176
    move/from16 v15, v17

    .line 178
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_4

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getHeight()I

    move-result v3

    int-to-float v11, v3

    .line 181
    :cond_4
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/widget/TabIndicator;->mPositionOffset:F

    move/from16 v18, v0

    add-float v8, v8, v18

    mul-float v8, v8, v17

    add-float/2addr v3, v8

    sub-float v8, v17, v15

    const/high16 v18, 0x40000000    # 2.0f

    div-float v8, v8, v18

    add-float v12, v3, v8

    .line 183
    .local v12, "drawableLeft":F
    add-float v13, v12, v15

    .line 184
    .local v13, "drawableRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float v14, v3, v8

    .line 185
    .local v14, "drawableTop":F
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/TabIndicator;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v10, v3

    .line 186
    .local v10, "drawableBottom":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v8, v12

    float-to-int v0, v14

    move/from16 v18, v0

    float-to-int v0, v13

    move/from16 v19, v0

    float-to-int v0, v10

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/TabIndicator;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mScrollState:I

    .line 321
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 324
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    .line 329
    iput p2, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPositionOffset:F

    .line 330
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z

    if-eqz v0, :cond_0

    .line 331
    if-lez p3, :cond_2

    .line 332
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/TabIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 333
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 340
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 343
    :cond_1
    return-void

    .line 334
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qrom/widget/TabIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 347
    iget v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 348
    iput p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPositionOffset:F

    .line 350
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 351
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 356
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 364
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/TabIndicator$SavedState;

    .line 365
    .local v0, "savedState":Lcom/tencent/qrom/widget/TabIndicator$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/TabIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 366
    iget v1, v0, Lcom/tencent/qrom/widget/TabIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    .line 367
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->requestLayout()V

    .line 368
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 372
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 373
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/qrom/widget/TabIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/TabIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 374
    .local v0, "savedState":Lcom/tencent/qrom/widget/TabIndicator$SavedState;
    iget v2, p0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/tencent/qrom/widget/TabIndicator$SavedState;->currentPage:I

    .line 375
    return-object v0
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 309
    iput p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mCurrentPage:I

    .line 310
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 311
    return-void
.end method

.method public setFadeDelay(I)V
    .locals 0
    .param p1, "fadeDelay"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeDelay:I

    .line 127
    return-void
.end method

.method public setFadeLength(I)V
    .locals 2
    .param p1, "fadeLength"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeLength:I

    .line 135
    const/16 v0, 0xff

    iget v1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeLength:I

    div-int/lit8 v1, v1, 0x1e

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeBy:I

    .line 136
    return-void
.end method

.method public setFades(Z)V
    .locals 2
    .param p1, "fades"    # Z

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z

    if-eq p1, v0, :cond_0

    .line 110
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z

    .line 111
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/TabIndicator;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/TabIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    .line 360
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 145
    return-void
.end method

.method public setViewPager(Lcom/tencent/qrom/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lcom/tencent/qrom/support/v4/view/ViewPager;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 284
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qrom/support/v4/view/ViewPager;->getAdapter()Lcom/tencent/qrom/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    iput-object p1, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    .line 288
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator;->mViewPager:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/support/v4/view/ViewPager;->setOnPageChangeListener(Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 290
    new-instance v0, Lcom/tencent/qrom/widget/TabIndicator$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/TabIndicator$2;-><init>(Lcom/tencent/qrom/widget/TabIndicator;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/TabIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setViewPager(Lcom/tencent/qrom/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/qrom/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/TabIndicator;->setViewPager(Lcom/tencent/qrom/support/v4/view/ViewPager;)V

    .line 301
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/TabIndicator;->setCurrentItem(I)V

    .line 302
    return-void
.end method
