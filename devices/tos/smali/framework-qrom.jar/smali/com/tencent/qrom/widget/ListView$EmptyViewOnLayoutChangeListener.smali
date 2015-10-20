.class Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyViewOnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/ListView;)V
    .locals 0

    .prologue
    .line 3960
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/ListView$1;

    .prologue
    .line 3960
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;-><init>(Lcom/tencent/qrom/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 3964
    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    move/from16 v0, p8

    if-ne p4, v0, :cond_1

    move/from16 v0, p9

    if-ne p5, v0, :cond_1

    .line 4004
    :cond_0
    :goto_0
    return-void

    .line 3969
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7a09012c

    if-ne v5, v6, :cond_4

    .line 3971
    sub-int v4, p5, p3

    .local v4, "totalHeight":I
    move-object v5, p1

    .line 3973
    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3974
    .local v1, "emptyListHost":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3975
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$300(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    if-nez v5, :cond_2

    .line 3976
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    # setter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I
    invoke-static {v5, v6}, Lcom/tencent/qrom/widget/ListView;->access$302(Lcom/tencent/qrom/widget/ListView;I)I

    .line 3979
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$400(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/ListView;->access$300(Lcom/tencent/qrom/widget/ListView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/ListView;->access$500(Lcom/tencent/qrom/widget/ListView;)I

    move-result v6

    add-int/2addr v5, v6

    if-gt v5, v4, :cond_3

    .line 3980
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$400(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3981
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMaxHeight:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/ListView;->access$300(Lcom/tencent/qrom/widget/ListView;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3982
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3985
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    iget-object v5, v5, Lcom/tencent/qrom/widget/ListView;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3986
    :cond_3
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMarginTop:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$400(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/ListView;->access$600(Lcom/tencent/qrom/widget/ListView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/ListView;->access$500(Lcom/tencent/qrom/widget/ListView;)I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v4, :cond_0

    .line 3989
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$500(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3990
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$600(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinMargin:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/ListView;->access$500(Lcom/tencent/qrom/widget/ListView;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3991
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3993
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    iget-object v5, v5, Lcom/tencent/qrom/widget/ListView;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3998
    .end local v1    # "emptyListHost":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "totalHeight":I
    :cond_4
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    # getter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/ListView;->access$600(Lcom/tencent/qrom/widget/ListView;)I

    move-result v5

    if-nez v5, :cond_0

    .line 3999
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4001
    .local v3, "parent":Landroid/view/View;
    iget-object v5, p0, Lcom/tencent/qrom/widget/ListView$EmptyViewOnLayoutChangeListener;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    # setter for: Lcom/tencent/qrom/widget/ListView;->mEmptyListMinHeight:I
    invoke-static {v5, v6}, Lcom/tencent/qrom/widget/ListView;->access$602(Lcom/tencent/qrom/widget/ListView;I)I

    goto/16 :goto_0
.end method
