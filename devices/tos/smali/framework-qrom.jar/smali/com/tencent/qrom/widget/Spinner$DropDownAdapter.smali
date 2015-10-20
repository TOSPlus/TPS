.class Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mItemHeight:I

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mSpinneMode:I


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mSpinneMode:I

    .line 563
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 564
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 565
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/SpinnerAdapter;
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 567
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/SpinnerAdapter;IF)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "spinnerMode"    # I
    .param p3, "itemHeight"    # F

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mSpinneMode:I

    .line 570
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 571
    float-to-int v0, p3

    iput v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mItemHeight:I

    .line 572
    iput p2, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mSpinneMode:I

    .line 573
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 574
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/SpinnerAdapter;
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 576
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 639
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 642
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "itemView":Landroid/view/View;
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 598
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 601
    if-nez p1, :cond_2

    .line 603
    const v1, 0x7a0201be

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 614
    :cond_0
    :goto_1
    return-object v0

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 607
    const v1, 0x7a0201a9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 611
    :cond_3
    const v1, 0x7a0201a7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 652
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 653
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    .line 655
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 625
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 631
    :cond_0
    return-void
.end method
