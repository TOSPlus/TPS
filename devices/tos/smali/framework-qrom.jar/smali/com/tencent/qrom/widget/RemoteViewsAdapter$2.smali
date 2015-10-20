.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
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
    .line 956
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 959
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$300(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    const/4 v0, -0x1

    .line 962
    .local v0, "position":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v3

    monitor-enter v3

    .line 963
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()[I

    move-result-object v1

    .line 964
    .local v1, "res":[I
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 965
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 968
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    const/4 v3, 0x1

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V
    invoke-static {v2, v0, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1700(Lcom/tencent/qrom/widget/RemoteViewsAdapter;IZ)V

    .line 971
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1800(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    .line 977
    .end local v0    # "position":I
    .end local v1    # "res":[I
    :cond_0
    :goto_0
    return-void

    .line 965
    .restart local v0    # "position":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 974
    .restart local v1    # "res":[I
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$800(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    goto :goto_0
.end method
