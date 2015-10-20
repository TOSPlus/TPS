.class Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;)V
    .locals 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 228
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$ExpandedIndexObserver;-><init>(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$1;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 229
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 230
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 276
    iget-object v5, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 277
    .local v1, "expandedItem":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 278
    iget-object v5, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget-object v5, v5, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 279
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 280
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 281
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    .line 282
    .local v3, "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 283
    iput v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 289
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 280
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 233
    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget-object v2, v2, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 234
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I
    invoke-static {v3}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->access$100(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;)I

    move-result v3

    sub-int v0, v2, v3

    .line 235
    .local v0, "count":I
    iget v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 238
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->qromGetNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 243
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    # getter for: Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I
    invoke-static {v1}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->access$100(Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 244
    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 245
    add-int/lit8 p1, p1, 0x1

    .line 247
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 253
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 257
    if-nez p2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;

    iget v2, v2, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 261
    check-cast v0, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;

    .line 262
    .local v0, "itemView":Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/tencent/qrom/internal/view/menu/MenuView$ItemView;->initialize(Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;I)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 272
    :cond_1
    return-object p2
.end method
