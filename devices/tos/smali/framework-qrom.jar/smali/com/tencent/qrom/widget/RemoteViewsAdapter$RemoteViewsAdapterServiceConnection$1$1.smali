.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    monitor-enter v2

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 248
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$600(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .line 252
    .local v0, "callback":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    .line 255
    :cond_0
    return-void

    .line 248
    .end local v0    # "callback":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
