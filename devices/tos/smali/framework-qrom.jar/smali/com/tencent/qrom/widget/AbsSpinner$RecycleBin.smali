.class Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsSpinner;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsSpinner;)V
    .locals 1

    .prologue
    .line 441
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->this$0:Lcom/tencent/qrom/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    .line 461
    iget-object v2, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 462
    .local v2, "scrapHeap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 463
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 464
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 465
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 466
    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->this$0:Lcom/tencent/qrom/widget/AbsSpinner;

    const/4 v5, 0x1

    # invokes: Lcom/tencent/qrom/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lcom/tencent/qrom/widget/AbsSpinner;->access$100(Lcom/tencent/qrom/widget/AbsSpinner;Landroid/view/View;Z)V

    .line 463
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 470
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 451
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 457
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    return-void
.end method
