.class public final Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mSelected:Z

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 74
    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 82
    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 87
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 651
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSelected:Z

    .line 119
    sget-object v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 132
    iput p3, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mId:I

    .line 133
    iput p2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 134
    iput p4, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 135
    iput p5, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 136
    iput-object p6, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 137
    iput p7, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 138
    return-void
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V

    .line 505
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 616
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 621
    const/4 v0, 0x1

    goto :goto_0

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 602
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 579
    :goto_0
    return-object v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 579
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 228
    iget-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    :goto_0
    return-object v0

    .line 386
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 198
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 242
    iget-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 279
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 280
    const-string v2, ""

    .line 303
    :goto_0
    return-object v2

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 287
    :sswitch_0
    sget-object v2, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    :sswitch_1
    sget-object v2, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :sswitch_2
    sget-object v2, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 412
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 434
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSelected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public qromGetShortcut()C
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    return v0
.end method

.method public qromGetShortcutLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qromGetTitleForItemView(Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public qromShouldShowShortcut()Z
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    return v0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 519
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 589
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 590
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 591
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 566
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 567
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 568
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 569
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 558
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 559
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V

    .line 562
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 644
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 645
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 232
    iget-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 238
    :goto_0
    return-object p0

    .line 234
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 236
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 224
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 416
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 417
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 418
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 422
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 417
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 438
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 446
    :goto_0
    return-object p0

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 450
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 451
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 452
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 455
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 451
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 189
    return-object p0

    .line 184
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 426
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 427
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 406
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 408
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 394
    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 395
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 398
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 215
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 497
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 246
    iget-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 252
    :goto_0
    return-object p0

    .line 248
    :cond_0
    iput-char p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 250
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 635
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 487
    return-object p0
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSelected:Z

    if-eq v0, p1, :cond_0

    .line 654
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSelected:Z

    .line 655
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 657
    :cond_0
    return-void
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 256
    iput-char p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 257
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 259
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 261
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 539
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :pswitch_0
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 552
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V

    .line 553
    return-void

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 597
    return-object p0
.end method

.method setSubMenu(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .line 327
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 328
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 351
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 353
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 357
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 372
    if-nez p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 378
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V

    .line 482
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 471
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 472
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 473
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 472
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
