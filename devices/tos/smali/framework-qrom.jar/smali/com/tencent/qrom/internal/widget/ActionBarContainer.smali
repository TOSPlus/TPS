.class public Lcom/tencent/qrom/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResId:I

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object v3, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackgroundResId:I

    .line 69
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    const v4, 0x7a0900e9

    if-ne v3, v4, :cond_0

    .line 75
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 76
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 83
    return-void

    :cond_2
    move v1, v2

    .line 81
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryBackgroundResId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackgroundResId:I

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    const v0, 0x7a0900e6

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    .line 91
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 214
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 218
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    .line 221
    .local v5, "hasTabs":Z
    :goto_0
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    .line 223
    .local v3, "containerHeight":I
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v9

    .line 224
    .local v9, "tabHeight":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7a0d0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 226
    .local v8, "shadowHeight":I
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 229
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v4

    .line 230
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 231
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-ne v2, v10, :cond_2

    .line 230
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v5    # "hasTabs":Z
    .end local v6    # "i":I
    .end local v8    # "shadowHeight":I
    .end local v9    # "tabHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 235
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "containerHeight":I
    .restart local v4    # "count":I
    .restart local v5    # "hasTabs":Z
    .restart local v6    # "i":I
    .restart local v8    # "shadowHeight":I
    .restart local v9    # "tabHeight":I
    :cond_2
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 236
    invoke-virtual {v2, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 239
    .end local v2    # "child":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    const/4 v11, 0x0

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v10, v0, v11, v1, v9}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 250
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v6    # "i":I
    .end local v8    # "shadowHeight":I
    .end local v9    # "tabHeight":I
    :cond_4
    :goto_3
    const/4 v7, 0x0

    .line 251
    .local v7, "needsInvalidate":Z
    iget-boolean v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v10, :cond_a

    .line 252
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    .line 253
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    const/4 v7, 0x1

    .line 275
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 276
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->invalidate()V

    .line 278
    :cond_6
    return-void

    .line 241
    .end local v7    # "needsInvalidate":Z
    .restart local v3    # "containerHeight":I
    .restart local v8    # "shadowHeight":I
    .restart local v9    # "tabHeight":I
    :cond_7
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getTabMode()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getTabMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 243
    :cond_8
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    sub-int v11, v3, v9

    sub-int/2addr v11, v8

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v10, v0, v11, v1, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    goto :goto_3

    .line 245
    :cond_9
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    sub-int v11, v3, v9

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v10, v0, v11, v1, v3}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    goto :goto_3

    .line 257
    .end local v3    # "containerHeight":I
    .end local v8    # "shadowHeight":I
    .end local v9    # "tabHeight":I
    .restart local v7    # "needsInvalidate":Z
    :cond_a
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_b

    .line 258
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v11}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v12}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getTop()I

    move-result v12

    iget-object v13, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v13}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getRight()I

    move-result v13

    iget-object v14, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v14}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 260
    const/4 v7, 0x1

    .line 262
    :cond_b
    if-eqz v5, :cond_d

    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v10, :cond_5

    .line 263
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getTabMode()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_c

    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getTabMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    .line 265
    :cond_c
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getRight()I

    move-result v13

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    :goto_6
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 262
    :cond_d
    const/4 v10, 0x0

    goto :goto_5

    .line 266
    :cond_e
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getTabMode()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_f

    .line 267
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getRight()I

    move-result v13

    iget-object v14, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v14}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6

    .line 269
    :cond_f
    iget-object v10, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v11}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getRight()I

    move-result v13

    iget-object v14, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v14}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 194
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    if-nez v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 198
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 201
    .local v0, "actionBarViewHeight":I
    :goto_1
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 202
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 203
    .local v3, "mode":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 204
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 205
    .local v2, "maxHeight":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 198
    .end local v0    # "actionBarViewHeight":I
    .end local v2    # "maxHeight":I
    .end local v3    # "mode":I
    :cond_2
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mActionBarView:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->invalidate()V

    .line 96
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->invalidate()V

    .line 106
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->invalidate()V

    .line 101
    return-void
.end method

.method public setTabContainer(Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mTabContainer:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    .line 151
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 158
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 121
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 123
    return-void

    .line 121
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method
