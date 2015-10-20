.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 59
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 61
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 356
    .local v8, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 358
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 359
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 361
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 363
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 365
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 366
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 367
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 369
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 372
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 373
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 374
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 377
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 378
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 380
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 381
    mul-int v10, v0, p1

    .line 382
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 384
    return v0

    .line 361
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 363
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 377
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 126
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 127
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 129
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 130
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 132
    .local v18, "heightPadding":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    sub-int v38, v19, v18

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 137
    .local v22, "itemHeightSpec":I
    :goto_0
    sub-int v37, v37, v36

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 141
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 143
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_1

    .line 145
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 337
    :goto_1
    return-void

    .line 132
    .end local v4    # "cellCount":I
    .end local v6    # "cellSizeRemaining":I
    .end local v22    # "itemHeightSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v38, v0

    sub-int v39, v19, v18

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    const/high16 v39, -0x80000000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    goto :goto_0

    .line 149
    .restart local v4    # "cellCount":I
    .restart local v6    # "cellSizeRemaining":I
    .restart local v22    # "itemHeightSpec":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 151
    .local v5, "cellSize":I
    move v8, v4

    .line 152
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 153
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 154
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 155
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 156
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 159
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 161
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 162
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v12, :cond_9

    .line 163
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 164
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 162
    :cond_2
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 166
    :cond_3
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 167
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 169
    if-eqz v21, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 176
    .local v23, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 177
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 178
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 179
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 180
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 181
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 182
    if-eqz v21, :cond_7

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_7

    const/16 v38, 0x1

    :goto_4
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 185
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/4 v7, 0x1

    .line 187
    .local v7, "cellsAvailable":I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 190
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 191
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 192
    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/16 v16, 0x1

    .line 194
    :cond_6
    sub-int/2addr v8, v9

    .line 195
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 196
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_2

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_3

    .line 182
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_7
    const/16 v38, 0x0

    goto :goto_4

    :cond_8
    move v7, v8

    .line 185
    goto :goto_5

    .line 201
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_9
    if-eqz v16, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 206
    .local v10, "centerSingleExpandedItem":Z
    :goto_6
    const/16 v30, 0x0

    .line 207
    .local v30, "needsExpansion":Z
    :goto_7
    if-lez v14, :cond_f

    if-lez v8, :cond_f

    .line 208
    const v26, 0x7fffffff

    .line 209
    .local v26, "minCells":I
    const-wide/16 v27, 0x0

    .line 210
    .local v27, "minCellsAt":J
    const/16 v29, 0x0

    .line 211
    .local v29, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v0, v12, :cond_e

    .line 212
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 213
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 216
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_c

    .line 211
    :cond_a
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 201
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    .end local v30    # "needsExpansion":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    .line 219
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsAt":J
    .restart local v29    # "minCellsItemCount":I
    .restart local v30    # "needsExpansion":Z
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 220
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 221
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 222
    const/16 v29, 0x1

    goto :goto_9

    .line 223
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 224
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 225
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 230
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_e
    or-long v32, v32, v27

    .line 232
    move/from16 v0, v29

    if-le v0, v8, :cond_14

    .line 261
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    :cond_f
    if-nez v16, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    .line 262
    .local v31, "singleItem":Z
    :goto_a
    if-lez v8, :cond_21

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_21

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_10

    if-nez v31, :cond_10

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    .line 264
    :cond_10
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 266
    .local v13, "expandCount":F
    if-nez v31, :cond_12

    .line 268
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 269
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 270
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 272
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    .line 273
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 274
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 278
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_12
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1a

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 281
    .local v15, "extraPixels":I
    :goto_b
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v12, :cond_20

    .line 282
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1b

    .line 281
    :cond_13
    :goto_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 235
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsAt":J
    .restart local v29    # "minCellsItemCount":I
    :cond_14
    add-int/lit8 v26, v26, 0x1

    .line 237
    const/16 v20, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 238
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 239
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 240
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_16

    .line 242
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 237
    :cond_15
    :goto_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 246
    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_17

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 251
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 252
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 255
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_18
    const/16 v30, 0x1

    .line 256
    goto/16 :goto_7

    .line 261
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_a

    .line 278
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 284
    .restart local v15    # "extraPixels":I
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 285
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 286
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 288
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 289
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 290
    if-nez v20, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1c

    .line 293
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 295
    :cond_1c
    const/16 v30, 0x1

    goto/16 :goto_d

    .line 296
    :cond_1d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    .line 297
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 298
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 299
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 300
    const/16 v30, 0x1

    goto/16 :goto_d

    .line 305
    :cond_1e
    if-eqz v20, :cond_1f

    .line 306
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 308
    :cond_1f
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 309
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 314
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_20
    const/4 v8, 0x0

    .line 318
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_21
    if-eqz v30, :cond_23

    .line 319
    const/16 v20, 0x0

    :goto_10
    move/from16 v0, v20

    if-ge v0, v12, :cond_23

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 321
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 323
    .restart local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_22

    .line 319
    :goto_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    .line 325
    :cond_22
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 326
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 331
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_23
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_24

    .line 332
    move/from16 v19, v25

    .line 335
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 336
    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 536
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 509
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 511
    .local v0, "params":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 512
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 517
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 522
    if-eqz p1, :cond_2

    .line 523
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 526
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 527
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 531
    .end local v0    # "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 523
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 541
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 542
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 559
    if-nez p1, :cond_1

    .line 560
    const/4 v2, 0x0

    .line 571
    :cond_0
    :goto_0
    return v2

    .line 562
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 563
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 565
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 566
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 568
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 569
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 555
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 89
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 496
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 497
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 390
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 395
    .local v6, "childCount":I
    add-int v30, p3, p5

    div-int/lit8 v15, v30, 0x2

    .line 396
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 397
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 398
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 399
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 400
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 401
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 402
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->isLayoutRtl()Z

    move-result v11

    .line 403
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 404
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 405
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 403
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 410
    .local v19, "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 411
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 412
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 413
    add-int v18, v18, v7

    .line 416
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 419
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 421
    .local v12, "l":I
    add-int v20, v12, v18

    .line 426
    .local v20, "r":I
    :goto_3
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 427
    .local v26, "t":I
    add-int v5, v26, v9

    .line 428
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 430
    sub-int v29, v29, v18

    .line 431
    const/4 v8, 0x1

    .line 432
    goto :goto_2

    .line 423
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 424
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 433
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 434
    .local v21, "size":I
    add-int v17, v17, v21

    .line 435
    sub-int v29, v29, v21

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 437
    add-int v17, v17, v7

    .line 439
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 443
    .end local v19    # "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_7
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    if-nez v8, :cond_8

    .line 445
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 446
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 447
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 448
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 449
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 450
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 451
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 455
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v30, 0x0

    :goto_4
    sub-int v22, v16, v30

    .line 456
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_b

    div-int v30, v29, v22

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 458
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 460
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 461
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 462
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 463
    .local v13, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 460
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 455
    .end local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_a
    const/16 v30, 0x1

    goto :goto_4

    .line 456
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_5

    .line 467
    .restart local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 468
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 469
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 470
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 471
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 472
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_7

    .line 475
    .end local v9    # "height":I
    .end local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 476
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 477
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 478
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 479
    .restart local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    .line 476
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 483
    :cond_f
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 484
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 485
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 486
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 487
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 488
    iget v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 94
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 95
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 97
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 98
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 104
    .local v5, "widthSize":I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 105
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 106
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 109
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 121
    :goto_1
    return-void

    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 95
    goto :goto_0

    .line 113
    .restart local v5    # "widthSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 114
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 117
    .local v3, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 119
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .param p1, "maxItemHeight"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 78
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 505
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 69
    return-void
.end method
