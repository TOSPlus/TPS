.class Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/GridView;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/GridView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/GridView;

    .line 302
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 303
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/GridView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/GridView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/GridView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/GridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/GridView$FullWidthFixedViewLayout;->this$0:Lcom/tencent/qrom/widget/GridView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/GridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 310
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 312
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 313
    return-void
.end method
