.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;
.super Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 733
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 734
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 735
    iget-object v0, p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V

    .line 736
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 740
    invoke-super {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 741
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close()V

    .line 742
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$302(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 743
    return-void
.end method
