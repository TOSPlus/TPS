.class Lcom/tencent/qrom/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    # getter for: Lcom/tencent/qrom/widget/FastScroller;->mList:Lcom/tencent/qrom/widget/AbsListView;
    invoke-static {v1}, Lcom/tencent/qrom/widget/FastScroller;->access$000(Lcom/tencent/qrom/widget/FastScroller;)Lcom/tencent/qrom/widget/AbsListView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/qrom/widget/AbsListView;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    # invokes: Lcom/tencent/qrom/widget/FastScroller;->beginDrag()V
    invoke-static {v1}, Lcom/tencent/qrom/widget/FastScroller;->access$100(Lcom/tencent/qrom/widget/FastScroller;)V

    .line 227
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    iget-object v2, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    # getter for: Lcom/tencent/qrom/widget/FastScroller;->mInitialTouchY:F
    invoke-static {v2}, Lcom/tencent/qrom/widget/FastScroller;->access$200(Lcom/tencent/qrom/widget/FastScroller;)F

    move-result v2

    # invokes: Lcom/tencent/qrom/widget/FastScroller;->getPosFromMotionEvent(F)F
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/FastScroller;->access$300(Lcom/tencent/qrom/widget/FastScroller;F)F

    move-result v0

    .line 228
    .local v0, "pos":F
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    # invokes: Lcom/tencent/qrom/widget/FastScroller;->scrollTo(F)V
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/FastScroller;->access$400(Lcom/tencent/qrom/widget/FastScroller;F)V

    .line 231
    .end local v0    # "pos":F
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/FastScroller$1;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    const/4 v2, 0x0

    # setter for: Lcom/tencent/qrom/widget/FastScroller;->mHasPendingDrag:Z
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/FastScroller;->access$502(Lcom/tencent/qrom/widget/FastScroller;Z)Z

    .line 232
    return-void
.end method
