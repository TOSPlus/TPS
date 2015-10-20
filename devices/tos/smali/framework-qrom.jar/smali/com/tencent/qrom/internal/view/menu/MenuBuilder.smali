.class public Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 141
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 142
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 144
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 146
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 186
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 192
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 196
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 198
    invoke-direct {p0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 199
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 386
    invoke-static {p3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 388
    .local v5, "ordering":I
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;-><init>(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 391
    .local v0, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 397
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 399
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 235
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 238
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 239
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 240
    .local v1, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 241
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_1
    invoke-interface {v1, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 246
    .end local v1    # "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 289
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 291
    .local v4, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 294
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 295
    .local v3, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v3, :cond_3

    .line 296
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_3
    invoke-interface {v3}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 299
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 300
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 301
    .local v2, "parcel":Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 302
    invoke-interface {v3, v2}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 270
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 271
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 272
    .local v2, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_2

    .line 273
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_2
    invoke-interface {v2}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 276
    .local v1, "id":I
    if-lez v1, :cond_1

    .line 277
    invoke-interface {v2}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 278
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 279
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 285
    .end local v1    # "id":I
    .end local v2    # "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 250
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 262
    :cond_0
    return v3

    .line 252
    :cond_1
    const/4 v3, 0x0

    .line 254
    .local v3, "result":Z
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 255
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 256
    .local v1, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 257
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_3
    if-nez v3, :cond_2

    .line 259
    invoke-interface {v1, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 747
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 748
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 749
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 750
    add-int/lit8 v2, v0, 0x1

    .line 754
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 747
    .restart local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 754
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 680
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 682
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 683
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_1
    sget-object v1, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 498
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 502
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1089
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1091
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1092
    iput-object p5, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1095
    iput-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1096
    iput-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1115
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1116
    return-void

    .line 1098
    :cond_0
    if-lez p1, :cond_3

    .line 1099
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1104
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1105
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1111
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1100
    :cond_3
    if-eqz p2, :cond_1

    .line 1101
    iput-object p2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1106
    :cond_4
    if-eqz p4, :cond_2

    .line 1107
    iput-object p4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 712
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x111003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 716
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 407
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 411
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 440
    iget-object v10, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 441
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 443
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 445
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 449
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 450
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 451
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 453
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 456
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 459
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 460
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 449
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 443
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 451
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 464
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 217
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 428
    .local v0, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V

    .line 429
    .local v1, "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)V

    .line 431
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 744
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 525
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 510
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 511
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->clear()V

    .line 512
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 513
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 514
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 515
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 516
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1080
    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1081
    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1082
    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1085
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    .line 924
    return-void
.end method

.method final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 907
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 919
    :goto_0
    return-void

    .line 909
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 910
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 911
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 912
    .local v1, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 913
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 918
    .end local v1    # "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1240
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    if-eq v4, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1258
    :cond_1
    :goto_0
    return v0

    .line 1242
    :cond_2
    const/4 v0, 0x0

    .line 1244
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1245
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1246
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 1247
    .local v2, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_4

    .line 1248
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1249
    :cond_4
    invoke-interface {v2, p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1253
    .end local v2    # "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1255
    if-eqz v0, :cond_1

    .line 1256
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1218
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1236
    :cond_0
    :goto_0
    return v0

    .line 1220
    :cond_1
    const/4 v0, 0x0

    .line 1222
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1223
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1224
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 1225
    .local v2, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 1226
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1227
    :cond_3
    invoke-interface {v2, p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    .end local v2    # "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1233
    if-eqz v0, :cond_0

    .line 1234
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 634
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 635
    const/4 p2, 0x0

    .line 638
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 639
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 641
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 646
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 638
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 598
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 599
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 600
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 611
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 602
    .restart local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 605
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 606
    goto :goto_1

    .line 598
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 617
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 618
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 619
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 624
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 617
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 823
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 824
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 825
    invoke-virtual {p0, v2, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 827
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-object v8

    .line 831
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 832
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 834
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 837
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 838
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 839
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 842
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 845
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 846
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 847
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 849
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 855
    goto :goto_0

    .line 847
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 845
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 780
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 781
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 782
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 784
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 786
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 808
    :cond_0
    return-void

    .line 791
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 792
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 793
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 794
    .local v3, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 795
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 797
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 798
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 805
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 1031
    iget-boolean v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1036
    :cond_0
    const/4 v0, 0x0

    .line 1037
    .local v0, "flagged":Z
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1038
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 1039
    .local v5, "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-nez v5, :cond_1

    .line 1040
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1042
    :cond_1
    invoke-interface {v5}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1046
    .end local v5    # "presenter":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1047
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1048
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1049
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 1050
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1051
    .local v4, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1052
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 1053
    .local v3, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1054
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1056
    :cond_3
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1062
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemsSize":I
    .end local v7    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_4
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1063
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1064
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1066
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1071
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1076
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1195
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1003
    :goto_0
    return-object v3

    .line 991
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 993
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 995
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 996
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 997
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1000
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1001
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1003
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 586
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 587
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 588
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    const/4 v3, 0x1

    .line 593
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 586
    .restart local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 983
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 984
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 985
    return-void
.end method

.method onItemVisibleChanged(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 974
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 975
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 934
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 935
    if-eqz p1, :cond_0

    .line 936
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 937
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 940
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 867
    move-object v1, p1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 869
    .local v1, "itemImpl":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 894
    :cond_1
    :goto_0
    return v0

    .line 873
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 875
    .local v0, "invoked":Z
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 876
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    .line 877
    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 878
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 879
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    .line 881
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .line 882
    .local v3, "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 883
    .local v2, "provider":Landroid/view/ActionProvider;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 884
    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 886
    :cond_4
    invoke-direct {p0, v3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 887
    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 889
    .end local v2    # "provider":Landroid/view/ActionProvider;
    .end local v3    # "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    :cond_5
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    .line 890
    invoke-virtual {p0, v6}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 758
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 760
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 762
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {p0, v1, p3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 766
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 767
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    .line 770
    :cond_1
    return v0
.end method

.method public final qromClose(Z)V
    .locals 0
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 1266
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close(Z)V

    .line 1267
    return-void
.end method

.method public qromGetActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public qromGetNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public qromGetVisibleItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public qromOnItemsChanged(Z)V
    .locals 0
    .param p1, "structureChanged"    # Z

    .prologue
    .line 1283
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1284
    return-void
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 474
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 475
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 476
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 477
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 479
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 483
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 485
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 469
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 507
    return-void
.end method

.method public removeMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .prologue
    .line 226
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 227
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuPresenter;

    .line 228
    .local v1, "item":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v1    # "item":Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/qrom/internal/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 352
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 353
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 354
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 355
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 356
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 357
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 359
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 360
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .line 361
    .local v5, "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 353
    .end local v5    # "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 367
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 368
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 369
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 318
    const/4 v5, 0x0

    .line 320
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 321
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 322
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 323
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 324
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 325
    if-nez v5, :cond_0

    .line 326
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 328
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 329
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 334
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .line 335
    .local v3, "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 321
    .end local v3    # "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 340
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 342
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    return-void
.end method

.method public setCallback(Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCallback:Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;

    .line 380
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1207
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 203
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 530
    .local v2, "group":I
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 531
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 532
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 533
    .local v1, "curItem":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 534
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 531
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 541
    .end local v1    # "curItem":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 544
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 546
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 547
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 548
    .local v2, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 549
    invoke-virtual {v2, p3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 550
    invoke-virtual {v2, p2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v2    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 573
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 575
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 576
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 577
    .local v2, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 578
    invoke-virtual {v2, p2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 575
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v2    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 556
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 561
    .local v0, "N":I
    const/4 v1, 0x0

    .line 562
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 563
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 564
    .local v3, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 565
    invoke-virtual {v3, p2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 562
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 570
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1162
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1163
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1150
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1151
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1138
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1139
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1126
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1127
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1174
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1175
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1210
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1211
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 666
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 961
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 962
    iput-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 965
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 956
    :cond_0
    return-void
.end method
