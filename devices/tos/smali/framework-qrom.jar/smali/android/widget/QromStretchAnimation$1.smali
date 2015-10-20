.class Landroid/widget/QromStretchAnimation$1;
.super Landroid/os/Handler;
.source "QromStretchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromStretchAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromStretchAnimation;


# direct methods
.method constructor <init>(Landroid/widget/QromStretchAnimation;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0x14

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # invokes: Landroid/widget/QromStretchAnimation;->computeViewSize()Z
    invoke-static {v0}, Landroid/widget/QromStretchAnimation;->access$000(Landroid/widget/QromStretchAnimation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # getter for: Landroid/widget/QromStretchAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/QromStretchAnimation;->access$100(Landroid/widget/QromStretchAnimation;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # getter for: Landroid/widget/QromStretchAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/QromStretchAnimation;->access$100(Landroid/widget/QromStretchAnimation;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # getter for: Landroid/widget/QromStretchAnimation;->animationlistener:Landroid/widget/QromStretchAnimation$AnimationListener;
    invoke-static {v0}, Landroid/widget/QromStretchAnimation;->access$200(Landroid/widget/QromStretchAnimation;)Landroid/widget/QromStretchAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # getter for: Landroid/widget/QromStretchAnimation;->animationlistener:Landroid/widget/QromStretchAnimation$AnimationListener;
    invoke-static {v0}, Landroid/widget/QromStretchAnimation;->access$200(Landroid/widget/QromStretchAnimation;)Landroid/widget/QromStretchAnimation$AnimationListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # getter for: Landroid/widget/QromStretchAnimation;->mView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/QromStretchAnimation;->access$300(Landroid/widget/QromStretchAnimation;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/QromStretchAnimation$1;->this$0:Landroid/widget/QromStretchAnimation;

    # getter for: Landroid/widget/QromStretchAnimation;->mFlexibleType:I
    invoke-static {v2}, Landroid/widget/QromStretchAnimation;->access$400(Landroid/widget/QromStretchAnimation;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/QromStretchAnimation$AnimationListener;->animationEnd(Landroid/view/View;I)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
