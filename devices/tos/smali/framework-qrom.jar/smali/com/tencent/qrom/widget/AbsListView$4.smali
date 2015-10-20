.class Lcom/tencent/qrom/widget/AbsListView$4;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 5272
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5274
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 5275
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput-boolean v2, v1, Lcom/tencent/qrom/widget/AbsListView;->mCachingActive:Z

    iput-boolean v2, v0, Lcom/tencent/qrom/widget/AbsListView;->mCachingStarted:Z

    .line 5276
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/tencent/qrom/widget/AbsListView;->access$3400(Lcom/tencent/qrom/widget/AbsListView;Z)V

    .line 5277
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # getter for: Lcom/tencent/qrom/widget/AbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$3500(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5278
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Lcom/tencent/qrom/widget/AbsListView;->access$3600(Lcom/tencent/qrom/widget/AbsListView;Z)V

    .line 5280
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5281
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$4;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView;->invalidate()V

    .line 5284
    :cond_1
    return-void
.end method
