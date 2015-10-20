.class Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "QromGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/QromGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/QromGridView;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/QromGridView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/QromGridView;

    .line 2505
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2506
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2510
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/QromGridView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/QromGridView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/QromGridView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/QromGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromGridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/QromGridView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/QromGridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 2513
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2515
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2516
    return-void
.end method
