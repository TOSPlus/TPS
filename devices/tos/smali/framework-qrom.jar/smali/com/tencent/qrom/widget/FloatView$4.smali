.class Lcom/tencent/qrom/widget/FloatView$4;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/FloatView;->initDefaultFloatView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/FloatView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/FloatView;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView$4;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 479
    const-string v0, "FloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultContent mOnContentClickListener isClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView$4;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->isClick:Z
    invoke-static {v2}, Lcom/tencent/qrom/widget/FloatView;->access$400(Lcom/tencent/qrom/widget/FloatView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$4;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mOnContentClickListener:Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;
    invoke-static {v0}, Lcom/tencent/qrom/widget/FloatView;->access$500(Lcom/tencent/qrom/widget/FloatView;)Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$4;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->isClick:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/FloatView;->access$400(Lcom/tencent/qrom/widget/FloatView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "FloatView"

    const-string v1, "mOnContentClickListener not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$4;->this$0:Lcom/tencent/qrom/widget/FloatView;

    # getter for: Lcom/tencent/qrom/widget/FloatView;->mOnContentClickListener:Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;
    invoke-static {v0}, Lcom/tencent/qrom/widget/FloatView;->access$500(Lcom/tencent/qrom/widget/FloatView;)Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;->onClick(Landroid/view/View;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView$4;->this$0:Lcom/tencent/qrom/widget/FloatView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/FloatView;->dismiss()V

    .line 485
    return-void
.end method
