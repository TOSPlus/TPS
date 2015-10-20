.class final Lcom/tencent/qrom/widget/FloatView$ListenersHandler;
.super Landroid/os/Handler;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenersHandler"
.end annotation


# instance fields
.field private mFloatView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/widget/FloatInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/FloatView;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 1003
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1004
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView$ListenersHandler;->mFloatView:Ljava/lang/ref/WeakReference;

    .line 1005
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1009
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1020
    :goto_0
    return-void

    .line 1011
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$ListenersHandler;->mFloatView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/FloatInterface;

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;->onDismiss(Lcom/tencent/qrom/widget/FloatInterface;)V

    goto :goto_0

    .line 1014
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$ListenersHandler;->mFloatView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/FloatInterface;

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;->onCancel(Lcom/tencent/qrom/widget/FloatInterface;)V

    goto :goto_0

    .line 1017
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qrom/widget/FloatInterface$onShowListener;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView$ListenersHandler;->mFloatView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/FloatInterface;

    invoke-interface {v0, v1}, Lcom/tencent/qrom/widget/FloatInterface$onShowListener;->onShow(Lcom/tencent/qrom/widget/FloatInterface;)V

    goto :goto_0

    .line 1009
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
