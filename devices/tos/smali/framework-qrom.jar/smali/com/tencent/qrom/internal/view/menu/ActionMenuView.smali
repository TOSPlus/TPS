.class public Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/tencent/qrom/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x3c

.field static final OVERFLOW_BUTTON_WIDTH:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mOverflowButtonWidth:I

.field private mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .local v0, "density":F
    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 66
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 67
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mOverflowButtonWidth:I

    .line 68
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mOverflowButtonWidth:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 69
    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mOverflowButtonWidth:I

    .line 72
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    .line 73
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setClipChildren(Z)V

    .line 76
    :cond_1
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 12
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 366
    .local v7, "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 368
    .local v2, "childHeightSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 369
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 371
    .local v3, "childHeightSpec":I
    const/4 v0, 0x0

    .line 372
    .local v0, "cellsUsed":I
    if-lez p2, :cond_0

    .line 373
    mul-int v10, p1, p2

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 375
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 378
    .local v8, "measuredWidth":I
    div-int v0, v8, p1

    .line 379
    rem-int v10, v8, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 382
    .end local v4    # "childWidthSpec":I
    .end local v8    # "measuredWidth":I
    :cond_0
    instance-of v10, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_1

    move-object v10, p0

    check-cast v10, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    move-object v6, v10

    .line 384
    .local v6, "itemView":Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;
    :goto_0
    iget-boolean v10, v7, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 385
    .local v5, "expandable":Z
    :goto_1
    iput-boolean v5, v7, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 387
    iput v0, v7, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 388
    mul-int v9, v0, p1

    .line 389
    .local v9, "targetWidth":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Landroid/view/View;->measure(II)V

    .line 391
    return v0

    .line 382
    .end local v5    # "expandable":Z
    .end local v6    # "itemView":Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;
    .end local v9    # "targetWidth":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 384
    .restart local v6    # "itemView":Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 140
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 141
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 142
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 144
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 145
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 147
    .local v18, "heightPadding":I
    sub-int v37, v37, v36

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 151
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 153
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 155
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 347
    :goto_0
    return-void

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 161
    .local v5, "cellSize":I
    move v8, v4

    .line 162
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 163
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 164
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 165
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 166
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 169
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 171
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v12

    .line 172
    .local v12, "childCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v12, :cond_8

    .line 173
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 174
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 172
    :cond_1
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 176
    :cond_2
    instance-of v0, v11, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    move/from16 v22, v0

    .line 177
    .local v22, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 179
    if-eqz v22, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 186
    .local v23, "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 187
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 188
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 189
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 190
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 191
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 192
    if-eqz v22, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 195
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 197
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 200
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 201
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 202
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 204
    :cond_5
    sub-int/2addr v8, v9

    .line 205
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 206
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 192
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 195
    goto :goto_4

    .line 211
    .end local v11    # "child":Landroid/view/View;
    .end local v22    # "isGeneratedItem":Z
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 216
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 217
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 218
    const v26, 0x7fffffff

    .line 219
    .local v26, "minCells":I
    const-wide/16 v27, 0x0

    .line 220
    .local v27, "minCellsAt":J
    const/16 v29, 0x0

    .line 221
    .local v29, "minCellsItemCount":I
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v12, :cond_d

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 223
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 226
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 221
    :cond_9
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 211
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 229
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsAt":J
    .restart local v29    # "minCellsItemCount":I
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 230
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 231
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 232
    const/16 v29, 0x1

    goto :goto_8

    .line 233
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 234
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    .line 235
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 240
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v27

    .line 242
    move/from16 v0, v29

    if-le v0, v8, :cond_13

    .line 271
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 272
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 274
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 276
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 278
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 279
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 280
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 282
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 283
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 284
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 288
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 291
    .local v15, "extraPixels":I
    :goto_a
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v12, :cond_1f

    .line 292
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 291
    :cond_12
    :goto_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 245
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsAt":J
    .restart local v29    # "minCellsItemCount":I
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 247
    const/16 v21, 0x0

    :goto_d
    move/from16 v0, v21

    if-ge v0, v12, :cond_17

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 249
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 250
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 252
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v21

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 247
    :cond_14
    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 256
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 260
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 261
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 262
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 265
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 266
    goto/16 :goto_6

    .line 271
    .end local v26    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v29    # "minCellsItemCount":I
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 288
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 294
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 295
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 296
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 298
    move-object/from16 v0, v23

    iput v15, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 299
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 300
    if-nez v21, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 303
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 305
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 306
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 307
    move-object/from16 v0, v23

    iput v15, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 308
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 309
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 310
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 315
    :cond_1d
    if-eqz v21, :cond_1e

    .line 316
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 318
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v21

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 319
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 324
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 328
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 329
    sub-int v38, v19, v18

    move/from16 v0, v38

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 330
    .local v20, "heightSpec":I
    const/16 v21, 0x0

    :goto_f
    move/from16 v0, v21

    if-ge v0, v12, :cond_22

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 332
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 334
    .restart local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 330
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 336
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 337
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 341
    .end local v11    # "child":Landroid/view/View;
    .end local v20    # "heightSpec":I
    .end local v23    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 342
    move/from16 v19, v25

    .line 345
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 346
    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 533
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

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
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 508
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 510
    .local v0, "params":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 511
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 516
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 521
    instance-of v1, p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 522
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 523
    .local v0, "result":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 524
    const/16 v1, 0x10

    iput v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 528
    .end local v0    # "result":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 538
    .local v0, "result":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 539
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 556
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 557
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 559
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 560
    check-cast v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 562
    :cond_0
    if-lez p1, :cond_1

    instance-of v3, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 563
    check-cast v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 565
    :cond_1
    return v2
.end method

.method public initialize(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 552
    return-void
.end method

.method public invokeItem(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 95
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 494
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 495
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 496
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 397
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 402
    .local v6, "childCount":I
    add-int v31, p3, p5

    div-int/lit8 v14, v31, 0x2

    .line 403
    .local v14, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 404
    .local v7, "dividerWidth":I
    const/16 v17, 0x0

    .line 405
    .local v17, "overflowWidth":I
    const/16 v16, 0x0

    .line 406
    .local v16, "nonOverflowWidth":I
    const/4 v15, 0x0

    .line 407
    .local v15, "nonOverflowCount":I
    sub-int v31, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v32

    sub-int v30, v31, v32

    .line 408
    .local v30, "widthRemaining":I
    const/4 v8, 0x0

    .line 409
    .local v8, "hasOverflow":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 411
    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 409
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 416
    .local v18, "p":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 417
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 418
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 419
    add-int v17, v17, v7

    .line 422
    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 423
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, v18

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v19, v31, v32

    .line 424
    .local v19, "r":I
    sub-int v11, v19, v17

    .line 425
    .local v11, "l":I
    div-int/lit8 v31, v9, 0x2

    sub-int v25, v14, v31

    .line 426
    .local v25, "t":I
    add-int v5, v25, v9

    .line 427
    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 429
    sub-int v30, v30, v17

    .line 430
    const/4 v8, 0x1

    .line 431
    goto :goto_2

    .line 432
    .end local v5    # "b":I
    .end local v9    # "height":I
    .end local v11    # "l":I
    .end local v19    # "r":I
    .end local v25    # "t":I
    :cond_4
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v18

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v21, v31, v32

    .line 433
    .local v21, "size":I
    add-int v16, v16, v21

    .line 434
    sub-int v30, v30, v21

    .line 435
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 436
    add-int v16, v16, v7

    .line 438
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 442
    .end local v18    # "p":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_6
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_7

    if-nez v8, :cond_7

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "window"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/WindowManager;

    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getWidth()I

    move-result v20

    .line 445
    .local v20, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7a0d0010

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 446
    .restart local v9    # "height":I
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 447
    .restart local v28    # "v":Landroid/view/View;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 448
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 449
    .local v29, "width":I
    sub-int v31, p4, p2

    div-int/lit8 v13, v31, 0x2

    .line 450
    .local v13, "midHorizontal":I
    div-int/lit8 v31, v20, 0x2

    sub-int v11, v13, v31

    .line 451
    .restart local v11    # "l":I
    div-int/lit8 v31, v9, 0x2

    sub-int v25, v14, v31

    .line 452
    .restart local v25    # "t":I
    add-int v31, v11, v20

    sub-int v31, v31, v25

    sub-int v31, v31, v29

    div-int/lit8 v31, v31, 0x2

    const/16 v32, 0x0

    add-int v33, v11, v20

    add-int v33, v33, v25

    add-int v33, v33, v29

    div-int/lit8 v33, v33, 0x2

    add-int v34, v25, v9

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 456
    .end local v9    # "height":I
    .end local v11    # "l":I
    .end local v13    # "midHorizontal":I
    .end local v20    # "screenWidth":I
    .end local v25    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_7
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v6, v0, :cond_8

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    if-nez v31, :cond_8

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7a0d0057

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 460
    .local v26, "textPadding":I
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "v":Landroid/view/View;
    move-object/from16 v31, v28

    .line 461
    check-cast v31, Landroid/view/ViewGroup;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 462
    .local v27, "textView":Landroid/view/View;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 463
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 464
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 465
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v25, v14, v31

    .line 466
    .restart local v25    # "t":I
    const/16 v31, 0x0

    const/16 v32, 0x0

    mul-int/lit8 v33, v26, 0x2

    add-int v33, v33, v29

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->layout(IIII)V

    .line 467
    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingTop()I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingBottom()I

    move-result v34

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 468
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v31

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v32, v32, v26

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v33

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 472
    .end local v9    # "height":I
    .end local v25    # "t":I
    .end local v26    # "textPadding":I
    .end local v27    # "textView":Landroid/view/View;
    .end local v28    # "v":Landroid/view/View;
    .end local v29    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v31, 0x0

    :goto_3
    sub-int v22, v15, v31

    .line 473
    .local v22, "spacerCount":I
    const/16 v32, 0x0

    if-lez v22, :cond_b

    div-int v31, v30, v22

    :goto_4
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 475
    .local v23, "spacerSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 476
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    .line 477
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 478
    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 479
    .local v12, "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    iget-boolean v0, v12, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    .line 476
    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 472
    .end local v12    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v24    # "startLeft":I
    .end local v28    # "v":Landroid/view/View;
    :cond_a
    const/16 v31, 0x1

    goto :goto_3

    .line 473
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v31, 0x0

    goto :goto_4

    .line 483
    .restart local v12    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v24    # "startLeft":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_c
    iget v0, v12, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v24, v24, v31

    .line 484
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 485
    .restart local v29    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 486
    .restart local v9    # "height":I
    div-int/lit8 v31, v9, 0x2

    sub-int v25, v14, v31

    .line 487
    .restart local v25    # "t":I
    add-int v31, v24, v29

    add-int v32, v25, v9

    move-object/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 488
    iget v0, v12, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v31, v31, v29

    add-int v31, v31, v23

    add-int v24, v24, v31

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 100
    iget-boolean v7, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 101
    .local v7, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v12, :cond_2

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 103
    iget-boolean v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v7, v9, :cond_0

    .line 104
    iput v11, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 109
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 110
    .local v8, "widthSize":I
    iget-boolean v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v8, v9, :cond_1

    .line 111
    iput v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 112
    iget-object v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromOnItemsChanged(Z)V

    .line 115
    :cond_1
    iget-boolean v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_3

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 136
    :goto_1
    return-void

    .end local v8    # "widthSize":I
    :cond_2
    move v9, v11

    .line 101
    goto :goto_0

    .line 119
    .restart local v8    # "widthSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    .line 120
    .local v0, "childCount":I
    const/4 v5, 0x0

    .line 121
    .local v5, "menuWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 122
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 123
    .local v6, "view":Landroid/view/View;
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 124
    .local v2, "childWidthSpec":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 125
    .local v1, "childHeightSpec":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    .line 126
    .local v4, "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    iget-boolean v9, v4, Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_4

    .line 127
    iget v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mOverflowButtonWidth:I

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 130
    :cond_4
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 131
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v5, v9

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 134
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    .end local v4    # "lp":Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-super {p0, v9, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 504
    return-void
.end method

.method public setPresenter(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 80
    return-void
.end method
