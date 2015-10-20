.class Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p2, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 413
    iput-object p2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 414
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 415
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 468
    iget-object v5, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->access$400(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 469
    .local v1, "expandedItem":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 470
    iget-object v5, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->access$400(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 471
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 473
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 474
    .local v3, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 475
    iput v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 481
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 472
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->access$200(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 424
    :goto_1
    return v1

    .line 419
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 424
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 428
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->access$200(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 431
    add-int/lit8 p1, p1, 0x1

    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    return-object v1

    .line 428
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 439
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    if-nez p2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->access$300(Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7a030041

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 447
    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    .line 448
    .local v1, "itemView":Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    iget-boolean v2, v2, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 449
    check-cast v2, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 451
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;->initialize(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;I)V

    .line 452
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v0

    .line 453
    .local v0, "count":I
    if-le v0, v5, :cond_2

    .line 454
    if-nez p1, :cond_3

    .line 464
    :cond_2
    :goto_0
    return-object p2

    .line 456
    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_2

    goto :goto_0
.end method
