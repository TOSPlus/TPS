.class public Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$1;,
        Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;,
        Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 81
    iput p2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 70
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7a030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    .line 103
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 86
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 96
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public isShowMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 303
    :cond_0
    return v0
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 221
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    if-nez v1, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 141
    :cond_0
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;-><init>(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)Z

    .line 145
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 194
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 197
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 186
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 189
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 190
    return-void
.end method

.method public setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .line 134
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mId:I

    .line 201
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 161
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 129
    :cond_0
    return-void
.end method
