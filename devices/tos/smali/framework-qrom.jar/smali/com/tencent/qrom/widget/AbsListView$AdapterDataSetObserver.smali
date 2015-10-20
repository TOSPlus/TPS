.class Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;
.super Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 6623
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 6626
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 6627
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$4000(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6628
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$4000(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FastScroller;->onSectionsChanged()V

    .line 6630
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 6634
    invoke-super {p0}, Lcom/tencent/qrom/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 6635
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$4000(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6636
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$AdapterDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mFastScroller:Lcom/tencent/qrom/widget/FastScroller;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$4000(Lcom/tencent/qrom/widget/AbsListView;)Lcom/tencent/qrom/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FastScroller;->onSectionsChanged()V

    .line 6638
    :cond_0
    return-void
.end method
