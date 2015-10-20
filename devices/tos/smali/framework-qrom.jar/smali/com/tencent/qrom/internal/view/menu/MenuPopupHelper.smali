.class public Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/tencent/qrom/internal/view/menu/MenuPresenter;
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;
.implements Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$1;,
        Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;,
        Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x7a030041

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    iput-object p2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 93
    iput-boolean p4, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x7a0d0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 102
    iput-object p3, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 104
    invoke-virtual {p2, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/tencent/qrom/internal/view/menu/MenuPresenter;)V

    .line 105
    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v8, 0x0

    .line 272
    const/4 v6, 0x0

    .line 273
    .local v6, "width":I
    const/4 v4, 0x0

    .line 274
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 275
    .local v3, "itemType":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 276
    .local v7, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 277
    .local v1, "heightMeasureSpec":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 278
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 279
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 280
    .local v5, "positionType":I
    if-eq v5, v3, :cond_0

    .line 281
    move v3, v5

    .line 282
    const/4 v4, 0x0

    .line 284
    :cond_0
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 285
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 287
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 288
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 289
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v5    # "positionType":I
    :cond_2
    return v6
.end method

.method private qromSetWidth()V
    .locals 4

    .prologue
    .line 493
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 495
    .local v1, "minWidth":I
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v2}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v0

    .line 496
    .local v0, "contentWidth":I
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 497
    if-ge v0, v1, :cond_1

    .line 498
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setContentWidth(I)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    iget v3, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 234
    .local v0, "delayTime":I
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->setRemoveView(Z)V

    .line 236
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->dismiss()V

    .line 238
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 324
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 376
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    .line 242
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->close()V

    .line 243
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 247
    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 250
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 298
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 305
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 300
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 258
    .local p1, "parent":Lcom/tencent/qrom/widget/AdapterView;, "Lcom/tencent/qrom/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 259
    .local v0, "adapter":Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;
    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 260
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 406
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 344
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 345
    new-instance v4, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    iget-object v7, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v7, p1, v8, v6}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 346
    .local v4, "subPopup":Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
    iget-object v7, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v7}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V

    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 350
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 351
    invoke-virtual {p1, v2}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 352
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 353
    const/4 v3, 0x1

    .line 357
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 359
    new-array v7, v5, [Z

    aput-boolean v6, v7, v6

    new-array v8, v5, [I

    aput v6, v8, v6

    invoke-virtual {v4, v6, v7, v8}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->tryShow(Z[Z[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 360
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    if-eqz v6, :cond_1

    .line 361
    iget-object v6, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v6, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)Z

    .line 366
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
    :cond_1
    :goto_1
    return v5

    .line 350
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
    :cond_3
    move v5, v6

    .line 366
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 318
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 319
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 109
    return-void
.end method

.method public setCallback(Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/tencent/qrom/internal/view/menu/MenuPresenter$Callback;

    .line 340
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 113
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->tryShow(Z[Z[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public takeMenuBGBlur(I)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "count"    # I

    .prologue
    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 125
    .local v13, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/QromActivity;

    invoke-virtual {v2}, Landroid/app/QromActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v16

    .line 126
    .local v16, "view":Landroid/view/View;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 127
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->buildDrawingCache()V

    .line 128
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const v2, 0x7a0202aa

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 131
    .local v15, "topDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7a0d0060

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7a0d003d

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int v5, v5, p1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v6, "matrix":Landroid/graphics/Matrix;
    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    iget-boolean v2, v2, Lcom/tencent/qrom/widget/ListPopupWindow;->isPopupFromTop:Z

    if-eqz v2, :cond_0

    const v2, 0x7a0d0003

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 143
    .local v14, "startY":I
    :goto_0
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7a0d0060

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x32

    add-int/lit8 v3, v14, 0x32

    const v4, 0x7a0d0060

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    const v5, 0x7a0d003d

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int v5, v5, p1

    add-int/lit8 v5, v5, -0x64

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 149
    .local v8, "bitmap2":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v11, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v15, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    const/16 v2, 0x1f

    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 152
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 153
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->destroyDrawingCache()V

    .line 155
    new-instance v10, Lcom/tencent/qrom/gaussblur/JNIBlur;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/tencent/qrom/gaussblur/JNIBlur;-><init>(Landroid/content/Context;)V

    .line 156
    .local v10, "blur":Lcom/tencent/qrom/gaussblur/JNIBlur;
    const/4 v2, 0x1

    invoke-virtual {v10, v8, v2}, Lcom/tencent/qrom/gaussblur/JNIBlur;->blur(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 160
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bitmap2":Landroid/graphics/Bitmap;
    .end local v10    # "blur":Lcom/tencent/qrom/gaussblur/JNIBlur;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "startY":I
    .end local v15    # "topDrawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "view":Landroid/view/View;
    :goto_1
    return-object v9

    .line 137
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v13    # "res":Landroid/content/res/Resources;
    .restart local v15    # "topDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const v3, 0x7a0d003d

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v3, v3, p1

    sub-int/2addr v2, v3

    const v3, 0x7a0d0010

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sub-int v14, v2, v3

    goto :goto_0

    .line 158
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v15    # "topDrawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "view":Landroid/view/View;
    :catch_0
    move-exception v12

    .line 159
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public tryShow(Z[Z[I)Z
    .locals 18
    .param p1, "isTransparent"    # Z
    .param p2, "isRedPoint"    # [Z
    .param p3, "textColors"    # [I

    .prologue
    .line 167
    new-instance v1, Lcom/tencent/qrom/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x7a0100a9

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ[Z[I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->setOnDismissListener(Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    .line 173
    .local v15, "mWindowManager":Landroid/view/WindowManager;
    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    .line 174
    .local v16, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    move-object/from16 v0, v16

    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 176
    .local v12, "density":F
    const/4 v1, 0x2

    new-array v13, v1, [I

    .line 177
    .local v13, "location":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    const/4 v1, 0x1

    aget v17, v13, v1

    .line 179
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v14, v1

    .line 181
    .local v14, "mActionBarHeight":I
    int-to-float v1, v14

    mul-float/2addr v1, v12

    float-to-int v1, v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/qrom/widget/ListPopupWindow;->isPopupFromTop:Z

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 190
    :goto_0
    if-eqz p1, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->takeMenuBGBlur(I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 193
    .local v11, "blurBGBitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v10, v1, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 195
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1, v10}, Lcom/tencent/qrom/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "blurBGBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->setModal(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 205
    .local v9, "anchor":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_3

    const/4 v8, 0x1

    .line 207
    .local v8, "addGlobalListener":Z
    :goto_1
    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 208
    if-eqz v8, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1, v9}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->qromSetWidth()V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/qrom/widget/ListPopupWindow;->mDrawBottomDivider:Z

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a02014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setOverScrollMode(I)V

    .line 229
    const/4 v1, 0x1

    .end local v8    # "addGlobalListener":Z
    :goto_2
    return v1

    .line 185
    .end local v9    # "anchor":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/qrom/widget/ListPopupWindow;->isPopupFromTop:Z

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto/16 :goto_0

    .line 206
    .restart local v9    # "anchor":Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 213
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 335
    :cond_0
    return-void
.end method
