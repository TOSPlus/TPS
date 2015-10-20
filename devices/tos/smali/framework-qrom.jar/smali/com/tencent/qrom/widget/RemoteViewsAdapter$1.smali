.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

.field final synthetic val$key:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    iput-object p2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;->val$key:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 940
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;
    invoke-static {}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 941
    :try_start_0
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;
    invoke-static {}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;->val$key:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;
    invoke-static {}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;->val$key:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :cond_0
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    invoke-static {}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;->val$key:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    invoke-static {}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;->val$key:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_1
    monitor-exit v1

    .line 948
    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
