.class Lcom/tencent/qrom/widget/TabIndicator$2;
.super Ljava/lang/Object;
.source "TabIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/TabIndicator;->setViewPager(Lcom/tencent/qrom/support/v4/view/ViewPager;)V
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
    .line 290
    iput-object p1, p0, Lcom/tencent/qrom/widget/TabIndicator$2;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator$2;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    # getter for: Lcom/tencent/qrom/widget/TabIndicator;->mFades:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/TabIndicator;->access$000(Lcom/tencent/qrom/widget/TabIndicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tencent/qrom/widget/TabIndicator$2;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    iget-object v1, p0, Lcom/tencent/qrom/widget/TabIndicator$2;->this$0:Lcom/tencent/qrom/widget/TabIndicator;

    # getter for: Lcom/tencent/qrom/widget/TabIndicator;->mFadeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/tencent/qrom/widget/TabIndicator;->access$300(Lcom/tencent/qrom/widget/TabIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/TabIndicator;->post(Ljava/lang/Runnable;)Z

    .line 295
    :cond_0
    return-void
.end method
