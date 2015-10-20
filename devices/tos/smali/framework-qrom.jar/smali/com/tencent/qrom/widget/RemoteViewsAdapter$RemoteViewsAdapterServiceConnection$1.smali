.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$100(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$200(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    .line 260
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$800(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    .line 261
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x1

    # setter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$902(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 262
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x0

    # setter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$1002(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 263
    :goto_1
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$300(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 221
    .local v1, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$400(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    .line 243
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$700(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
