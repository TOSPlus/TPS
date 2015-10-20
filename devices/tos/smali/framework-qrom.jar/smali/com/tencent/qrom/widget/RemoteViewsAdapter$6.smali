.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$6;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$6;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$6;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$200(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    .line 1378
    return-void
.end method
