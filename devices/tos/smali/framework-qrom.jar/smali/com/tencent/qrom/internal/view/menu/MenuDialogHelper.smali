.class public Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Lcom/tencent/qrom/app/AlertDialog;

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 52
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog;->dismiss()V

    .line 166
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 193
    return-void
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 175
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V

    .line 181
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V

    .line 171
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 118
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 119
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v4}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 122
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 126
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 149
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 132
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v4}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 134
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 136
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 138
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromClose(Z)V

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 149
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenterCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .line 155
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    .line 61
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 64
    .local v2, "menu":Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    new-instance v0, Lcom/tencent/qrom/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7a0f001f

    invoke-direct {v0, v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 67
    .local v0, "builder":Lcom/tencent/qrom/app/AlertDialog$Builder;
    new-instance v3, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7a030041

    invoke-direct {v3, v4, v5}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    .line 70
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V

    .line 71
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 72
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->create()Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    .line 89
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3, p0}, Lcom/tencent/qrom/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3, v6}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 94
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 98
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    const/16 v3, 0x51

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    const v3, 0x3f19999a    # 0.6f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 101
    const v3, 0x7a0f00f0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 105
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v3

    const v4, 0x7a02014e

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/ListView;->setBackgroundResource(I)V

    .line 107
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qrom/widget/ListView;->useShapedSelector(Z)V

    .line 108
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v3

    const v4, 0x7a020151

    const v5, 0x7a020153

    const v6, 0x7a020152

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/qrom/widget/ListView;->setSelector(III)V

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuDialogHelper;->mDialog:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v3}, Lcom/tencent/qrom/app/AlertDialog;->show()V

    .line 115
    return-void
.end method
