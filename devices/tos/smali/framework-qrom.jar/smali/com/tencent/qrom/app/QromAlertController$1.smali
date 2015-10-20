.class Lcom/tencent/qrom/app/QromAlertController$1;
.super Ljava/lang/Object;
.source "QromAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromAlertController;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromAlertController;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$000(Lcom/tencent/qrom/app/QromAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$100(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$100(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 173
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$700(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromAlertController;->access$600(Lcom/tencent/qrom/app/QromAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$200(Lcom/tencent/qrom/app/QromAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$300(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$300(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$400(Lcom/tencent/qrom/app/QromAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$500(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$1;->this$0:Lcom/tencent/qrom/app/QromAlertController;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromAlertController;->access$500(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
