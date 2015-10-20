.class Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/ListPopupWindow$1;

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/tencent/qrom/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1361
    return-void
.end method

.method public onScrollStateChanged(Lcom/tencent/qrom/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1364
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$1000(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$1200(Lcom/tencent/qrom/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$1100(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1367
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcom/tencent/qrom/widget/ListPopupWindow;

    # getter for: Lcom/tencent/qrom/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->access$1100(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1369
    :cond_0
    return-void
.end method
