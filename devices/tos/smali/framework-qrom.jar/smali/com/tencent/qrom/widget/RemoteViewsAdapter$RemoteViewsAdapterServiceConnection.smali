.class Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
.super Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsAdapterServiceConnection"
.end annotation


# instance fields
.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mIsConnecting:Z

.field private mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method

.method static synthetic access$1002(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    return p1
.end method

.method static synthetic access$902(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized bind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 167
    :try_start_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 168
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .local v0, "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_1

    .line 169
    iget v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->checkInteractAcrossUsersPermission(Landroid/content/Context;I)V
    invoke-static {p1, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$000(Landroid/content/Context;I)V

    .line 170
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p2, p3, v3, v4}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;Landroid/os/UserHandle;)V

    .line 175
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 173
    .restart local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .restart local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_1
    :try_start_2
    const-string v3, "RemoteViewsAdapter"

    const-string v4, "bind: adapter was null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "RemoteViewsAdapterServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 179
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 207
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .local v0, "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    if-nez v0, :cond_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$1100(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onServiceDisconnected()V
    .locals 3

    .prologue
    .line 268
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 273
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .local v0, "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    if-nez v0, :cond_0

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$700(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 188
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .local v0, "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_0

    .line 189
    iget v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter;->checkInteractAcrossUsersPermission(Landroid/content/Context;I)V
    invoke-static {p1, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->access$000(Landroid/content/Context;I)V

    .line 190
    new-instance v3, Landroid/os/UserHandle;

    iget v4, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p2, p3, v3}, Landroid/appwidget/AppWidgetManager;->unbindRemoteViewsService(ILandroid/content/Intent;Landroid/os/UserHandle;)V

    .line 195
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :goto_1
    monitor-exit p0

    return-void

    .line 193
    .restart local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .restart local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_0
    :try_start_1
    const-string v3, "RemoteViewsAdapter"

    const-string v4, "unbind: adapter was null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v0    # "adapter":Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "RemoteViewsAdapterServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbind(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 199
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
