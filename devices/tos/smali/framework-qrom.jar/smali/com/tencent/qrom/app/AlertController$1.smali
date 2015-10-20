.class Lcom/tencent/qrom/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/AlertController;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/AlertController;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$000(Lcom/tencent/qrom/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$100(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$100(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 207
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$600(Lcom/tencent/qrom/app/AlertController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 208
    .local v0, "bRipple":Z
    if-eqz v0, :cond_4

    .line 209
    if-eqz v1, :cond_1

    .line 210
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$700(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$700(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/qrom/app/AlertController;->access$700(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v4}, Lcom/tencent/qrom/app/AlertController;->access$800(Lcom/tencent/qrom/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    :goto_1
    return-void

    .line 202
    .end local v0    # "bRipple":Z
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$200(Lcom/tencent/qrom/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$300(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$300(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$400(Lcom/tencent/qrom/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$500(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$500(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    .line 217
    .restart local v0    # "bRipple":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 218
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 222
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/qrom/app/AlertController;->access$700(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$1;->this$0:Lcom/tencent/qrom/app/AlertController;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/tencent/qrom/app/AlertController;->access$800(Lcom/tencent/qrom/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
