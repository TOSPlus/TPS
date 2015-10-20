.class Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/internal/widget/ActionBarView;Lcom/tencent/qrom/internal/widget/ActionBarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/internal/widget/ActionBarView;
    .param p2, "x1"    # Lcom/tencent/qrom/internal/widget/ActionBarView$1;

    .prologue
    .line 1401
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/tencent/qrom/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x0

    .line 1478
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1000(Lcom/tencent/qrom/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$600(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1480
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1100(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mClose:Landroid/widget/Button;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1100(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1000(Lcom/tencent/qrom/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$700(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1486
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # invokes: Lcom/tencent/qrom/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1200(Lcom/tencent/qrom/internal/widget/ActionBarView;)V

    .line 1491
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$800(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1300(Lcom/tencent/qrom/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1492
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$800(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1494
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$900(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$1000(Lcom/tencent/qrom/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 1495
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$900(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 1498
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->requestLayout()V

    .line 1499
    invoke-virtual {p2, v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1501
    const/4 v0, 0x1

    return v0

    .line 1488
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$700(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    .line 1463
    iput-object p2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 1464
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mHomeLayout:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$600(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$700(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$700(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$800(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$800(Lcom/tencent/qrom/internal/widget/ActionBarView;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$900(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    # getter for: Lcom/tencent/qrom/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->access$900(Lcom/tencent/qrom/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/tencent/qrom/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarView;->requestLayout()V

    .line 1469
    invoke-virtual {p2, v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1471
    return v2
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1458
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1506
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1416
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    .line 1411
    :cond_0
    iput-object p2, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 1412
    return-void
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1454
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1516
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1511
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1449
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1445
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1422
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1423
    const/4 v1, 0x0

    .line 1425
    .local v1, "found":Z
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1426
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1427
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1428
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1429
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1430
    const/4 v1, 0x1

    .line 1436
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1438
    iget-object v4, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/tencent/qrom/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    .line 1441
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1427
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
