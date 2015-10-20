.class Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .line 750
    invoke-direct {p0, p2, p3}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 751
    iput-object p3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .line 753
    invoke-virtual {p3}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 754
    .local v3, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-nez v5, :cond_0

    .line 756
    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v5, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 759
    :cond_0
    iget-object v5, p1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V

    .line 761
    const/4 v4, 0x0

    .line 762
    .local v4, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 763
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 764
    invoke-virtual {p3, v2}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 765
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 766
    const/4 v4, 0x1

    .line 770
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 771
    return-void

    .line 756
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "preserveIconSpacing":Z
    :cond_2
    # getter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$400(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 763
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 775
    invoke-super {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 776
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->access$502(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 777
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 778
    return-void
.end method
