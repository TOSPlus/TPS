.class Lcom/tencent/qrom/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    # getter for: Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/tencent/qrom/widget/PopupWindow;->access$000(Lcom/tencent/qrom/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    # getter for: Lcom/tencent/qrom/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/tencent/qrom/widget/PopupWindow;->access$000(Lcom/tencent/qrom/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 140
    .local v6, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    # getter for: Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/widget/PopupWindow;->access$100(Lcom/tencent/qrom/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    # getter for: Lcom/tencent/qrom/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/widget/PopupWindow;->access$100(Lcom/tencent/qrom/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 144
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    iget-object v2, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    # getter for: Lcom/tencent/qrom/widget/PopupWindow;->mAnchorXoff:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/PopupWindow;->access$200(Lcom/tencent/qrom/widget/PopupWindow;)I

    move-result v2

    iget-object v4, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    # getter for: Lcom/tencent/qrom/widget/PopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/PopupWindow;->access$300(Lcom/tencent/qrom/widget/PopupWindow;)I

    move-result v4

    # invokes: Lcom/tencent/qrom/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Lcom/tencent/qrom/widget/PopupWindow;->access$400(Lcom/tencent/qrom/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    # invokes: Lcom/tencent/qrom/widget/PopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->access$500(Lcom/tencent/qrom/widget/PopupWindow;Z)V

    .line 145
    iget-object v0, p0, Lcom/tencent/qrom/widget/PopupWindow$1;->this$0:Lcom/tencent/qrom/widget/PopupWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/PopupWindow;->update(IIIIZ)V

    .line 147
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 139
    .end local v6    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
