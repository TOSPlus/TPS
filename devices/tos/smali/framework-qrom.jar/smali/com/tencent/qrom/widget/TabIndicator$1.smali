.class Lcom/tencent/qrom/widget/TabIndicator$1;
.super Ljava/lang/Object;
.source "TabIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/TabIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/TabIndicator;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/TabIndicator;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    # getter for: Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/TabIndicator;->access$000(Lcom/tencent/qrom/widget/TabIndicator;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    # getter for: Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/tencent/qrom/widget/TabIndicator;->access$100(Lcom/tencent/qrom/widget/TabIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    # getter for: Lcom/tencent/qrom/widget/TabIndicator;->mFadeBy:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/TabIndicator;->access$200(Lcom/tencent/qrom/widget/TabIndicator;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 55
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    # getter for: Lcom/tencent/qrom/widget/TabIndicator;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/tencent/qrom/widget/TabIndicator;->access$100(Lcom/tencent/qrom/widget/TabIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v1, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/TabIndicator;->invalidate()V

    .line 57
    if-lez v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tencent/qrom/widget/TabIndicator$1;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/qrom/widget/TabIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
