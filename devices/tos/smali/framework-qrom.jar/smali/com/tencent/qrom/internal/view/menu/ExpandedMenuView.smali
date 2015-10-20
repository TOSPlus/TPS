.class public final Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;
.super Lcom/tencent/qrom/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/tencent/qrom/internal/view/menu/MenuView;
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAnimations:I

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object v1, Lcom/tencent/qrom/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    const v1, 0x7a02014e

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->setBackgroundResource(I)V

    .line 61
    const v1, 0x7a020151

    const v2, 0x7a020153

    const v3, 0x7a020152

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->setSelector(III)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 71
    return-void
.end method

.method public invokeItem(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/tencent/qrom/widget/ListView;->onDetachedFromWindow()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 79
    return-void
.end method

.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    .line 87
    return-void
.end method
