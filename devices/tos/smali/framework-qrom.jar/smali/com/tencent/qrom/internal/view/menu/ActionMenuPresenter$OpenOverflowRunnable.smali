.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 805
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 808
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 809
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 810
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsTransPopup:Z
    invoke-static {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$600(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsMarks:[Z
    invoke-static {v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$700(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)[Z

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mTextColors:[I
    invoke-static {v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$800(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)[I

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;->tryShow(Z[Z[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    # setter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$302(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$902(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 815
    return-void
.end method
