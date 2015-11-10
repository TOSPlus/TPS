.class Lcom/tencent/qrom/widget/ListView$1;
.super Landroid/os/Handler;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/ListView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/ListView;)V
    .locals 0

    .prologue
    .line 4009
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListView$1;->this$0:Lcom/tencent/qrom/widget/ListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4011
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4012
    return-void
.end method
