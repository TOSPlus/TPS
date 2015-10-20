.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
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
    .line 1317
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    monitor-enter v1

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 1322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1325
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$800(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    .line 1326
    return-void

    .line 1322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
