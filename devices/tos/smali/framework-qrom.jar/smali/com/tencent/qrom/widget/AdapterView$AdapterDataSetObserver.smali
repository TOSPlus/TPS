.class Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/tencent/qrom/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 786
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 833
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 834
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 792
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/widget/AdapterView;->mDataChanged:Z

    .line 793
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget v1, v1, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/tencent/qrom/widget/AdapterView;->mOldItemCount:I

    .line 794
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    .line 798
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget v0, v0, Lcom/tencent/qrom/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget v0, v0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Lcom/tencent/qrom/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/AdapterView;->access$000(Lcom/tencent/qrom/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 805
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->checkFocus()V

    .line 806
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->requestLayout()V

    .line 807
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 811
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/widget/AdapterView;->mDataChanged:Z

    .line 813
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    # invokes: Lcom/tencent/qrom/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AdapterView;->access$100(Lcom/tencent/qrom/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget v1, v1, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/tencent/qrom/widget/AdapterView;->mOldItemCount:I

    .line 821
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iput v3, v0, Lcom/tencent/qrom/widget/AdapterView;->mItemCount:I

    .line 822
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iput v2, v0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedPosition:I

    .line 823
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iput-wide v4, v0, Lcom/tencent/qrom/widget/AdapterView;->mSelectedRowId:J

    .line 824
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iput v2, v0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedPosition:I

    .line 825
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iput-wide v4, v0, Lcom/tencent/qrom/widget/AdapterView;->mNextSelectedRowId:J

    .line 826
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iput-boolean v3, v0, Lcom/tencent/qrom/widget/AdapterView;->mNeedSync:Z

    .line 828
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->checkFocus()V

    .line 829
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->requestLayout()V

    .line 830
    return-void
.end method
