.class public Landroid/widget/QromTabWidget;
.super Landroid/widget/QromMaxHeightLinearLayout;
.source "QromTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QromTabWidget$1;,
        Landroid/widget/QromTabWidget$OnTabSelectionChanged;,
        Landroid/widget/QromTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/QromTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QromTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const v0, 0x7a010096

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QromTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromMaxHeightLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v3, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    .line 68
    iput-boolean v2, p0, Landroid/widget/QromTabWidget;->mDrawBottomStrips:Z

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/QromTabWidget;->mBounds:Landroid/graphics/Rect;

    .line 74
    iput v3, p0, Landroid/widget/QromTabWidget;->mImposedTabsHeight:I

    .line 88
    sget-object v1, Lcom/tencent/qrom/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/QromTabWidget;->setStripEnabled(Z)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/QromTabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/QromTabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0}, Landroid/widget/QromTabWidget;->initTabWidget()V

    .line 98
    return-void
.end method

.method static synthetic access$100(Landroid/widget/QromTabWidget;)Landroid/widget/QromTabWidget$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromTabWidget;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/QromTabWidget;->mSelectionChangedListener:Landroid/widget/QromTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-virtual {p0, v3}, Landroid/widget/QromTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 126
    iget-object v0, p0, Landroid/widget/QromTabWidget;->mContext:Landroid/content/Context;

    .line 127
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/widget/QromTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 133
    const v2, 0x7a020268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/QromTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_0
    iget-object v2, p0, Landroid/widget/QromTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 136
    const v2, 0x7a020269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/QromTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/QromTabWidget;->setFocusable(Z)V

    .line 142
    invoke-virtual {p0, p0}, Landroid/widget/QromTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 455
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 458
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 470
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 472
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->addView(Landroid/view/View;)V

    .line 476
    new-instance v1, Landroid/widget/QromTabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/QromTabWidget$TabClickListener;-><init>(Landroid/widget/QromTabWidget;ILandroid/widget/QromTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 478
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->invalidate()V

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 313
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 316
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-boolean v5, p0, Landroid/widget/QromTabWidget;->mDrawBottomStrips:Z

    if-eqz v5, :cond_0

    .line 325
    iget v5, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 327
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/QromTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 328
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/QromTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 330
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 331
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    iget-boolean v5, p0, Landroid/widget/QromTabWidget;->mStripMoved:Z

    if-eqz v5, :cond_2

    .line 334
    iget-object v0, p0, Landroid/widget/QromTabWidget;->mBounds:Landroid/graphics/Rect;

    .line 335
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 336
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 337
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getHeight()I

    move-result v2

    .line 338
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 340
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    iput-boolean v10, p0, Landroid/widget/QromTabWidget;->mStripMoved:Z

    .line 345
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/widget/QromTabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 397
    iget v1, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 398
    iget v1, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 403
    .end local v0    # "tabView":Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 428
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    .line 431
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/QromTabWidget;->setCurrentTab(I)V

    .line 434
    if-eq v0, p1, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 437
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 108
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 118
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 113
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 114
    iget p2, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    goto :goto_0

    .line 115
    :cond_2
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 116
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/widget/QromTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/widget/QromTabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 148
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/QromTabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/widget/QromTabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 151
    iget v0, p0, Landroid/widget/QromTabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 155
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/QromMaxHeightLinearLayout;->qromMeasureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 157
    return-void
.end method

.method measureHorizontal(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-nez v9, :cond_0

    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/QromMaxHeightLinearLayout;->qromMeasureHorizontal(II)V

    .line 202
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 167
    .local v8, "unspecifiedWidth":I
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/QromTabWidget;->mImposedTabsHeight:I

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/QromMaxHeightLinearLayout;->qromMeasureHorizontal(II)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getMeasuredWidth()I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 171
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    .line 172
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getChildCount()I

    move-result v3

    .line 174
    .local v3, "count":I
    const/4 v1, 0x0

    .line 175
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 176
    invoke-virtual {p0, v6}, Landroid/widget/QromTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 175
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    .line 182
    iget-object v9, p0, Landroid/widget/QromTabWidget;->mImposedTabWidths:[I

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/QromTabWidget;->mImposedTabWidths:[I

    array-length v9, v9

    if-eq v9, v3, :cond_4

    .line 183
    :cond_3
    new-array v9, v3, [I

    iput-object v9, p0, Landroid/widget/QromTabWidget;->mImposedTabWidths:[I

    .line 185
    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 186
    invoke-virtual {p0, v6}, Landroid/widget/QromTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 185
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 188
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 189
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 190
    .local v4, "delta":I
    sub-int v9, v2, v4

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 191
    .local v7, "newWidth":I
    iget-object v9, p0, Landroid/widget/QromTabWidget;->mImposedTabWidths:[I

    aput v7, v9, v6

    .line 193
    sub-int v9, v2, v7

    sub-int/2addr v5, v9

    .line 194
    add-int/lit8 v1, v1, -0x1

    .line 195
    iget v9, p0, Landroid/widget/QromTabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/QromTabWidget;->mImposedTabsHeight:I

    goto :goto_4

    .line 201
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/QromMaxHeightLinearLayout;->qromMeasureHorizontal(II)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 505
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 506
    iget v2, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    if-eqz p2, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v1

    .line 513
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 514
    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 515
    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->setCurrentTab(I)V

    .line 516
    iget-object v2, p0, Landroid/widget/QromTabWidget;->mSelectionChangedListener:Landroid/widget/QromTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/QromTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/QromTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 523
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 410
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 411
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromTabWidget;->mStripMoved:Z

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/QromMaxHeightLinearLayout;->onSizeChanged(IIII)V

    .line 104
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Landroid/widget/QromMaxHeightLinearLayout;->removeAllViews()V

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    .line 484
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 377
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 382
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 384
    :cond_2
    iput p1, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    .line 385
    iget v0, p0, Landroid/widget/QromTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 386
    iput-boolean v2, p0, Landroid/widget/QromTabWidget;->mStripMoved:Z

    .line 388
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/widget/QromMaxHeightLinearLayout;->setEnabled(Z)V

    .line 443
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getTabCount()I

    move-result v1

    .line 444
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 445
    invoke-virtual {p0, v2}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 246
    iput-object p1, p0, Landroid/widget/QromTabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->requestLayout()V

    .line 248
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->invalidate()V

    .line 249
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/QromTabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 267
    iput-object p1, p0, Landroid/widget/QromTabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->requestLayout()V

    .line 269
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->invalidate()V

    .line 270
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Landroid/widget/QromTabWidget;->mDrawBottomStrips:Z

    .line 291
    invoke-virtual {p0}, Landroid/widget/QromTabWidget;->invalidate()V

    .line 292
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/QromTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/QromTabWidget$OnTabSelectionChanged;

    .prologue
    .line 500
    iput-object p1, p0, Landroid/widget/QromTabWidget;->mSelectionChangedListener:Landroid/widget/QromTabWidget$OnTabSelectionChanged;

    .line 501
    return-void
.end method
