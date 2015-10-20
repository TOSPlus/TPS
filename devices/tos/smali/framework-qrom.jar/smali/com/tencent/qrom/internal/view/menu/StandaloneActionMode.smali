.class public Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;
.super Landroid/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    .line 48
    iput-object p3, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 50
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 51
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;)V

    .line 52
    iput-boolean p4, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mFocusable:Z

    .line 53
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mFinished:Z

    .line 93
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 84
    return-void
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public onCloseSubMenu(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 139
    return-void
.end method

.method public onMenuItemSelected(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->invalidate()V

    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 144
    return-void
.end method

.method public onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x1

    .line 130
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return v2

    .line 134
    :cond_0
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 78
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/StandaloneActionMode;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
