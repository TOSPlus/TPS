.class public abstract Lcom/tencent/qrom/widget/AbsSpinner;
.super Lcom/tencent/qrom/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/AbsSpinner$1;,
        Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;,
        Lcom/tencent/qrom/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qrom/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 47
    iput v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 48
    iput v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 49
    iput v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 50
    iput v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;-><init>(Lcom/tencent/qrom/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    .line 61
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->initAbsSpinner()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 48
    iput v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 49
    iput v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 50
    iput v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 51
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 53
    new-instance v3, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;-><init>(Lcom/tencent/qrom/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    .line 70
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->initAbsSpinner()V

    .line 72
    sget-object v3, Landroid/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 76
    .local v2, "entries":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 77
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x7a030071

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 83
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x7a030070

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 88
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->setFocusable(Z)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 97
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 308
    iget v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 175
    .local v6, "widthMode":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 177
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 179
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 181
    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 184
    iget-boolean v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->handleDataChanged()V

    .line 188
    :cond_0
    const/4 v2, 0x0

    .line 189
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 190
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 192
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 193
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 195
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 196
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 198
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 201
    :cond_1
    if-eqz v5, :cond_2

    .line 203
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 206
    :cond_2
    if-eqz v5, :cond_4

    .line 207
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 208
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 209
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iput-boolean v11, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 212
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/tencent/qrom/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 214
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 215
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 217
    const/4 v1, 0x0

    .line 221
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 223
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 224
    if-nez v6, :cond_5

    .line 225
    iget-object v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 229
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 230
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 232
    invoke-static {v2, p2, v11}, Lcom/tencent/qrom/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .line 233
    .local v0, "heightSize":I
    invoke-static {v3, p1, v11}, Lcom/tencent/qrom/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .line 235
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 236
    iput p2, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 237
    iput p1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 238
    return-void

    .line 175
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_6
    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 177
    :cond_7
    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 179
    :cond_8
    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 181
    :cond_9
    iget v8, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x1

    .line 427
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;

    .line 429
    .local v0, "ss":Lcom/tencent/qrom/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 431
    iget-wide v1, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 432
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mDataChanged:Z

    .line 433
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mNeedSync:Z

    .line 434
    iget-wide v1, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSyncRowId:J

    .line 435
    iget v1, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSyncPosition:I

    .line 436
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSyncMode:I

    .line 437
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->requestLayout()V

    .line 439
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 414
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 415
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 416
    .local v0, "ss":Lcom/tencent/qrom/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->selectedId:J

    .line 417
    iget-wide v2, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->position:I

    .line 422
    :goto_0
    return-object v0

    .line 420
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/tencent/qrom/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 346
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 347
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 348
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 349
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 353
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 354
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 356
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    iget v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 362
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 353
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 362
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 257
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mRecycler:Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;

    .line 258
    .local v4, "recycleBin":Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mFirstPosition:I

    .line 261
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 263
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 264
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView;->requestLayout()V

    .line 325
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 149
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mDataChanged:Z

    .line 150
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mNeedSync:Z

    .line 152
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 153
    iput v2, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 154
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 156
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 158
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->invalidate()V

    .line 159
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 40
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v0, -0x1

    .line 107
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 109
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->resetList()V

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 114
    iput v0, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 115
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 117
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 118
    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mOldItemCount:I

    .line 119
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mItemCount:I

    .line 120
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->checkFocus()V

    .line 122
    new-instance v1, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AdapterView;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 123
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 127
    .local v0, "position":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 130
    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->checkSelectionChanged()V

    .line 142
    .end local v0    # "position":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->requestLayout()V

    .line 143
    return-void

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->checkFocus()V

    .line 137
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->resetList()V

    .line 139
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 281
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->requestLayout()V

    .line 282
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->invalidate()V

    .line 283
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 273
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 275
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 276
    return-void

    .line 273
    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 294
    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 296
    iget v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 297
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 298
    invoke-virtual {p0, v0, p2}, Lcom/tencent/qrom/widget/AbsSpinner;->layout(IZ)V

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 301
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
