.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 623
    const/4 v0, 0x1

    goto :goto_0
.end method
