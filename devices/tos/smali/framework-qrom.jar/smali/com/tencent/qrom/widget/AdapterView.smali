.class public abstract Lcom/tencent/qrom/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/AdapterView$1;,
        Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;,
        Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/tencent/qrom/widget/AdapterView$AdapterContextMenuInfo;,
        Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;,
        Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;,
        Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mFirstTop:I

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qrom/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    .line 70
    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstTop:I

    .line 87
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 97
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 129
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mInLayout:Z

    .line 155
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    .line 161
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    .line 166
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    .line 172
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    .line 204
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedPosition:I

    .line 209
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedRowId:J

    .line 228
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    .line 70
    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstTop:I

    .line 87
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 97
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 129
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mInLayout:Z

    .line 155
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    .line 161
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    .line 166
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    .line 172
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    .line 204
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedPosition:I

    .line 209
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedRowId:J

    .line 228
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    .line 70
    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstTop:I

    .line 87
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 97
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 129
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mInLayout:Z

    .line 155
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    .line 161
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    .line 166
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    .line 172
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    .line 204
    iput v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedPosition:I

    .line 209
    iput-wide v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedRowId:J

    .line 228
    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AdapterView;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AdapterView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 881
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 885
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 887
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 890
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/tencent/qrom/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 943
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 944
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 945
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 946
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 949
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 723
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const/4 p1, 0x0

    .line 727
    :cond_0
    if-eqz p1, :cond_3

    .line 728
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 730
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AdapterView;->setVisibility(I)V

    .line 739
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 740
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mLeft:I

    iget v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mTop:I

    iget v4, p0, Lcom/tencent/qrom/widget/AdapterView;->mRight:I

    iget v5, p0, Lcom/tencent/qrom/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView;->onLayout(ZIIII)V

    .line 746
    :cond_1
    :goto_1
    return-void

    .line 733
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 744
    :cond_4
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 450
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 463
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 491
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 476
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 954
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 705
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 706
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 710
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 711
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 712
    iget-object v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 713
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/tencent/qrom/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 715
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 705
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 706
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 710
    goto :goto_2

    :cond_8
    move v3, v5

    .line 711
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1021
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->selectionChanged()V

    .line 1023
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedPosition:I

    .line 1024
    iget-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOldSelectedRowId:J

    .line 1026
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 896
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 897
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    const/4 v1, 0x1

    .line 901
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 784
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 776
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1037
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    .line 1039
    .local v2, "count":I
    if-nez v2, :cond_1

    .line 1040
    const/4 v14, -0x1

    .line 1112
    :cond_0
    :goto_0
    return v14

    .line 1043
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 1044
    .local v8, "idToMatch":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/tencent/qrom/widget/AdapterView;->mSyncPosition:I

    .line 1047
    .local v14, "seed":I
    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 1048
    const/4 v14, -0x1

    goto :goto_0

    .line 1052
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1053
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1060
    .local v3, "endTime":J
    move v5, v14

    .line 1063
    .local v5, "first":I
    move v10, v14

    .line 1066
    .local v10, "last":I
    const/4 v11, 0x0

    .line 1076
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1077
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v1, :cond_5

    .line 1078
    const/4 v14, -0x1

    goto :goto_0

    .line 1096
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v12, "rowId":J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1098
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1099
    move v14, v10

    .line 1101
    const/4 v11, 0x0

    .line 1081
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1082
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1083
    .restart local v12    # "rowId":J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1088
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1089
    .restart local v7    # "hitLast":Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1091
    .restart local v6    # "hitFirst":Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1112
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1088
    .restart local v12    # "rowId":J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1089
    .restart local v7    # "hitLast":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1102
    .restart local v6    # "hitFirst":Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1104
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1105
    move v14, v5

    .line 1107
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 664
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 755
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 756
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 760
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 761
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 633
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 593
    move-object v3, p1

    .line 596
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 597
    move-object v3, v4

    goto :goto_0

    .line 599
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 613
    :cond_0
    :goto_1
    return v5

    .line 605
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 606
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 607
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 608
    iget v5, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 606
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 564
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 565
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 566
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 567
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 569
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 958
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    .line 959
    .local v0, "count":I
    const/4 v1, 0x0

    .line 961
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 966
    iget-boolean v4, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 969
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 973
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 974
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 976
    invoke-virtual {p0, v2, v7}, Lcom/tencent/qrom/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 977
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 979
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 980
    const/4 v1, 0x1

    .line 984
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 986
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 989
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 990
    add-int/lit8 v2, v0, -0x1

    .line 992
    :cond_1
    if-gez v2, :cond_2

    .line 993
    const/4 v2, 0x0

    .line 997
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/tencent/qrom/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 998
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 1000
    invoke-virtual {p0, v2, v5}, Lcom/tencent/qrom/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1002
    :cond_3
    if-ltz v3, :cond_4

    .line 1003
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1004
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->checkSelectionChanged()V

    .line 1005
    const/4 v1, 0x1

    .line 1009
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1011
    iput v6, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    .line 1012
    iput-wide v8, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    .line 1013
    iput v6, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    .line 1014
    iput-wide v8, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    .line 1015
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 1016
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->checkSelectionChanged()V

    .line 1018
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 674
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1124
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 839
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 840
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectionNotifier:Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 841
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 930
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 931
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 933
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 937
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 938
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 939
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 940
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 920
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 921
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 922
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 923
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 926
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 531
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mLayoutHeight:I

    .line 532
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 906
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 909
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 911
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 912
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 913
    const/4 v1, 0x1

    .line 915
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AdapterView;->playSoundEffect(I)V

    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 301
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1157
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1158
    iput-boolean v5, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 1159
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncHeight:J

    .line 1160
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1162
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1163
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 1164
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncPosition:I

    .line 1165
    if-eqz v1, :cond_0

    .line 1166
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSpecificTop:I

    .line 1168
    :cond_0
    iput v4, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncMode:I

    .line 1185
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1171
    :cond_2
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1172
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1173
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1174
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 1178
    :goto_1
    iget v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncPosition:I

    .line 1179
    if-eqz v1, :cond_3

    .line 1180
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSpecificTop:I

    .line 1182
    :cond_3
    iput v5, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1176
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 526
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 504
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 516
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 859
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 860
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectionNotifier:Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 866
    new-instance v0, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;-><init>(Lcom/tencent/qrom/widget/AdapterView;Lcom/tencent/qrom/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectionNotifier:Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectionNotifier:Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 875
    :cond_2
    :goto_0
    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 876
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 878
    :cond_3
    return-void

    .line 870
    :cond_4
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 649
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 651
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 652
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 653
    .local v1, "empty":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/qrom/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 654
    return-void

    .line 652
    .end local v1    # "empty":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 680
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 682
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mDesiredFocusableState:Z

    .line 683
    if-nez p1, :cond_1

    .line 684
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 687
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 688
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 680
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 687
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 692
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 693
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 695
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 696
    if-eqz p1, :cond_1

    .line 697
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/AdapterView;->mDesiredFocusableState:Z

    .line 700
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 701
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 693
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 700
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1142
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    .line 1143
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    .line 1145
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1146
    iput p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncPosition:I

    .line 1147
    iget-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSyncRowId:J

    .line 1149
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 766
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 271
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .line 272
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 334
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AdapterView;->setLongClickable(Z)V

    .line 337
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemLongClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemLongClickListener;

    .line 338
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 387
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .line 388
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1132
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    .line 1133
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    .line 1134
    return-void
.end method

.method public abstract setSelection(I)V
.end method
