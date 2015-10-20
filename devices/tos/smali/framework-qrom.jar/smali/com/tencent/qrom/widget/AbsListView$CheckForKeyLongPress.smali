.class Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;
.super Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 2905
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AbsListView$1;

    .prologue
    .line 2905
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2907
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/AbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v3, v3, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 2908
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v3, v3, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v4, v4, Lcom/tencent/qrom/widget/AbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 2909
    .local v1, "index":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v1}, Lcom/tencent/qrom/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2911
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v3, v3, Lcom/tencent/qrom/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 2912
    const/4 v0, 0x0

    .line 2913
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2914
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-object v4, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget v4, v4, Lcom/tencent/qrom/widget/AbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-wide v5, v5, Lcom/tencent/qrom/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/tencent/qrom/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 2916
    :cond_0
    if-eqz v0, :cond_1

    .line 2917
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v7}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 2918
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2925
    .end local v0    # "handled":Z
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2921
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/widget/AbsListView$CheckForKeyLongPress;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v3, v7}, Lcom/tencent/qrom/widget/AbsListView;->setPressed(Z)V

    .line 2922
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
