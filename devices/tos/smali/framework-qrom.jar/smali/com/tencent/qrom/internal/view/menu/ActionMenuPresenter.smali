.class public Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
.super Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$1;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;,
        Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mHasOverflowButton:Z

.field private mIsMarks:[Z

.field private mIsOverflowDelay:Z

.field private mIsTopOverflowDelay:Z

.field private mIsTransPopup:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowClickListener:Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

.field private mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mTextColors:[I

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const v0, 0x7a030003

    const v1, 0x7a030002

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mHasOverflowButton:Z

    .line 94
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionMod"    # I

    .prologue
    .line 108
    const v0, 0x7a030003

    const v1, 0x7a030008

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mHasOverflowButton:Z

    .line 94
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsTopOverflowDelay:Z

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsOverflowDelay:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsTransPopup:Z

    return v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsMarks:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mTextColors:[I

    return-object v0
.end method

.method static synthetic access$902(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 327
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 328
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 331
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 332
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 331
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 338
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;)V
    .locals 7
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 224
    const/4 v5, 0x0

    invoke-interface {p2, p1, v5}, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;->initialize(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;I)V

    .line 226
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .local v3, "menuView":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    move-object v1, p2

    .line 227
    check-cast v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    .line 228
    .local v1, "actionItemView":Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v1, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/tencent/qrom/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 230
    iget-object v5, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0a001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 231
    .local v2, "isActionBarSplitTheme":Z
    if-eqz v2, :cond_1

    iget-boolean v5, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-eqz v5, :cond_1

    .line 232
    iget-object v5, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/tencent/qrom/R$styleable;->ActionBar:[I

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x17

    const v6, 0x7a0f00f4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 235
    .local v4, "textResId":I
    if-lez v4, :cond_0

    .line 236
    invoke-virtual {v1, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;->setTextButtonNewStyle(I)V

    .line 238
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "textResId":I
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 393
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 394
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 301
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 426
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 427
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 428
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 429
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 430
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 432
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 433
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 434
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 435
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 436
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    .line 437
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 438
    .local v14, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 439
    add-int/lit8 v22, v22, 0x1

    .line 445
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 448
    const/16 v17, 0x0

    .line 436
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 441
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 443
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 453
    .end local v14    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    if-nez v10, :cond_4

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 455
    :cond_4
    add-int/lit8 v17, v17, -0x1

    .line 457
    :cond_5
    sub-int v17, v17, v22

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 460
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 462
    const/4 v4, 0x0

    .line 463
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 464
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 467
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 471
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_1d

    .line 472
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 474
    .restart local v14    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 476
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    .line 477
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 479
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 480
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 485
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 486
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 487
    if-nez v8, :cond_8

    .line 488
    move/from16 v8, v18

    .line 490
    :cond_8
    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 491
    .local v9, "groupId":I
    if-eqz v9, :cond_9

    .line 492
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 494
    :cond_9
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 471
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 483
    .restart local v24    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 495
    .end local v24    # "v":Landroid/view/View;
    :cond_c
    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 498
    invoke-virtual {v14}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 499
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 500
    .local v12, "inGroup":Z
    if-gtz v17, :cond_d

    if-eqz v12, :cond_15

    :cond_d
    if-lez v26, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    if-lez v7, :cond_15

    :cond_e
    const/4 v13, 0x1

    .line 503
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_12

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 505
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 506
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 508
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 509
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 511
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 512
    if-nez v6, :cond_10

    .line 513
    const/4 v13, 0x0

    .line 518
    .end local v6    # "cells":I
    :cond_10
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 519
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 520
    if-nez v8, :cond_11

    .line 521
    move/from16 v8, v18

    .line 524
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 525
    if-ltz v26, :cond_17

    const/16 v27, 0x1

    :goto_7
    and-int v13, v13, v27

    .line 532
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_12
    :goto_8
    if-eqz v13, :cond_1a

    if-eqz v9, :cond_1a

    .line 533
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 547
    :cond_13
    if-eqz v13, :cond_14

    add-int/lit8 v17, v17, -0x1

    .line 549
    :cond_14
    invoke-virtual {v14, v13}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 500
    .end local v13    # "isAction":Z
    :cond_15
    const/4 v13, 0x0

    goto :goto_5

    .line 516
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_16
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 525
    .restart local v18    # "measuredWidth":I
    :cond_17
    const/16 v27, 0x0

    goto :goto_7

    .line 528
    :cond_18
    add-int v27, v26, v8

    if-lez v27, :cond_19

    const/16 v27, 0x1

    :goto_9
    and-int v13, v13, v27

    goto :goto_8

    :cond_19
    const/16 v27, 0x0

    goto :goto_9

    .line 534
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_1a
    if-eqz v12, :cond_13

    .line 536
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 537
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_a
    move/from16 v0, v16

    if-ge v0, v11, :cond_13

    .line 538
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 539
    .local v3, "areYouMyGroupie":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1c

    .line 541
    invoke-virtual {v3}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1b

    add-int/lit8 v17, v17, 0x1

    .line 542
    :cond_1b
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 537
    :cond_1c
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 552
    .end local v3    # "areYouMyGroupie":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v14    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v16    # "j":I
    :cond_1d
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    :cond_0
    instance-of v3, p2, Lcom/tencent/qrom/internal/view/menu/ActionMenuItemView;

    if-nez v3, :cond_1

    .line 208
    const/4 p2, 0x0

    .line 210
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 212
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 214
    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 215
    .local v2, "menuParent":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 216
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    invoke-virtual {v2, v1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_3
    return-object v0

    .line 212
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/tencent/qrom/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/tencent/qrom/internal/view/menu/MenuView;
    move-object v1, v0

    .line 199
    check-cast v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setPresenter(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;)V

    .line 200
    return-object v0
.end method

.method public getOverflowButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 373
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 384
    :goto_0
    return v1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 380
    .local v0, "popup":Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 382
    goto :goto_0

    .line 384
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v3, :cond_0

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 128
    :cond_0
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 133
    :cond_1
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v3, :cond_2

    .line 135
    const v3, 0x7a0c0023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 139
    :cond_2
    iget v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 140
    .local v2, "width":I
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_5

    .line 141
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_3

    .line 142
    iget-boolean v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-eqz v3, :cond_4

    .line 143
    new-instance v3, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 148
    :goto_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 149
    .local v1, "spec":I
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 151
    .end local v1    # "spec":I
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 156
    :goto_1
    iput v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 158
    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 161
    iput-object v6, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 162
    return-void

    .line 146
    :cond_4
    new-instance v3, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButtonTop;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0

    .line 153
    :cond_5
    iput-object v6, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_1
.end method

.method public isOverflowButtonShowing()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mHasOverflowButton:Z

    if-eqz v0, :cond_0

    .line 821
    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 558
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V

    .line 559
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 170
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromOnItemsChanged(Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 570
    move-object v1, p1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 571
    .local v1, "saved":Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget v4, v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 573
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .line 575
    .local v2, "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z

    .line 578
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 564
    .local v0, "state":Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 565
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    move-object v1, p1

    .line 309
    .local v1, "topSubMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 310
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 314
    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 315
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 318
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 319
    new-instance v2, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 320
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 321
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 322
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z

    .line 323
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 582
    if-eqz p1, :cond_0

    .line 584
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromClose(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 194
    return-void
.end method

.method public setIsTransPopup(Z)V
    .locals 0
    .param p1, "isTransPopup"    # Z

    .prologue
    .line 860
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsTransPopup:Z

    .line 861
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 190
    return-void
.end method

.method public setOverflowButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 832
    :cond_0
    return-void
.end method

.method public setOverflowClickListener(Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowClickListener:Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    .line 845
    return-void
.end method

.method public setOverflowDelay(Z)V
    .locals 0
    .param p1, "isDelay"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsOverflowDelay:Z

    .line 884
    return-void
.end method

.method public setPopupMenuMarks([Z)V
    .locals 0
    .param p1, "isMarks"    # [Z

    .prologue
    .line 870
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsMarks:[Z

    .line 871
    return-void
.end method

.method public setPopupTextColors([I)V
    .locals 0
    .param p1, "textColors"    # [I

    .prologue
    .line 874
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mTextColors:[I

    .line 875
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 185
    return-void
.end method

.method public setTopOverflowButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 838
    :cond_0
    return-void
.end method

.method public setTopOverflowDelay(Z)V
    .locals 0
    .param p1, "isDelay"    # Z

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mIsTopOverflowDelay:Z

    .line 888
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 177
    iput p1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 178
    iput-boolean p2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 180
    return-void
.end method

.method public shouldIncludeItem(ILcom/tencent/qrom/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .prologue
    .line 245
    invoke-virtual {p2}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 346
    iget-boolean v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowClickListener:Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowClickListener:Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;

    invoke-interface {v1}, Lcom/tencent/qrom/app/ActionBar$OverflowClickListener;->doClick()V

    .line 353
    :cond_0
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 354
    .local v0, "popup":Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 356
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 360
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z

    .line 364
    .end local v0    # "popup":Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 11
    .param p1, "cleared"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 250
    invoke-super {p0, p1}, Lcom/tencent/qrom/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 252
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_1

    .line 253
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v7

    .line 257
    .local v7, "provider":Landroid/view/ActionProvider;
    if-eqz v7, :cond_0

    .line 258
    invoke-virtual {v7, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 255
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v7    # "provider":Landroid/view/ActionProvider;
    :cond_1
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 266
    .local v5, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 267
    .local v2, "hasOverflow":Z
    iget-boolean v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 268
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 269
    .restart local v1    # "count":I
    if-ne v1, v9, :cond_8

    .line 270
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v8

    if-nez v8, :cond_7

    move v2, v9

    .line 276
    .end local v1    # "count":I
    :cond_2
    :goto_2
    iput-boolean v2, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mHasOverflowButton:Z

    .line 279
    if-eqz v2, :cond_a

    .line 280
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v8, :cond_3

    .line 281
    new-instance v8, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 283
    :cond_3
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 284
    .local v6, "parent":Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    if-eq v6, v8, :cond_5

    .line 285
    if-eqz v6, :cond_4

    .line 286
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 288
    :cond_4
    iget-object v4, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v4, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    .line 290
    .local v4, "menuView":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/tencent/qrom/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .end local v4    # "menuView":Lcom/tencent/qrom/internal/view/menu/ActionMenuView;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v8, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;

    iget-boolean v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v8, v9}, Lcom/tencent/qrom/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 297
    return-void

    .line 263
    .end local v2    # "hasOverflow":Z
    .end local v5    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v5    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    move v2, v10

    .line 270
    goto :goto_2

    .line 272
    :cond_8
    if-lez v1, :cond_9

    move v2, v9

    :goto_4
    goto :goto_2

    :cond_9
    move v2, v10

    goto :goto_4

    .line 292
    .end local v1    # "count":I
    :cond_a
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    if-ne v8, v9, :cond_5

    .line 293
    iget-object v8, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/tencent/qrom/internal/view/menu/MenuView;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/tencent/qrom/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method
