.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
    .param p2, "x1"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$1;

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 794
    instance-of v0, p1, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 795
    check-cast p1, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .end local p1    # "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromClose(Z)V

    .line 797
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 785
    if-nez p1, :cond_0

    .line 789
    .end local p1    # "subMenu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    :goto_0
    return v2

    .line 788
    .restart local p1    # "subMenu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .end local p1    # "subMenu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    goto :goto_0
.end method
