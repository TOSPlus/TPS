.class public Lcom/tencent/qrom/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final MULTI_USER_PERM:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"

.field private static final REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static sCacheRemovalQueue:Landroid/os/Handler; = null

.field private static sCacheRemovalThread:Landroid/os/HandlerThread; = null

.field private static final sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataReady:Z

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRequestedViews:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field mUserId:I

.field private mVisibleWindowLowerBound:I

.field private mVisibleWindowUpperBound:I

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .prologue
    const/4 v1, 0x0

    .line 830
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 122
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mDataReady:Z

    .line 831
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    .line 832
    iput-object p2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    .line 833
    const-string v1, "remoteAdapterAppWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mAppWidgetId:I

    .line 834
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 835
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 836
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Non-null Intent must be specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_0
    new-instance v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRequestedViews:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 840
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->checkInteractAcrossUsersPermission(Landroid/content/Context;I)V

    .line 841
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    .line 844
    const-string v1, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    const-string v1, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 849
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsCache-loader"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 850
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 851
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    .line 852
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    .line 854
    sget-object v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 855
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsAdapter-cachePruner"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    .line 856
    sget-object v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 857
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    .line 861
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    .line 862
    new-instance v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    .line 864
    new-instance v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;II)V

    .line 867
    .local v0, "key":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v2

    .line 868
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 869
    sget-object v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 870
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1300(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 871
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1300(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    if-lez v1, :cond_3

    .line 874
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mDataReady:Z

    .line 876
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mDataReady:Z

    if-nez v1, :cond_4

    .line 881
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->requestBindService()Z

    .line 883
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 884
    return-void

    .line 876
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 883
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 878
    :cond_5
    :try_start_5
    new-instance v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v3, 0x28

    invoke-direct {v1, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->checkInteractAcrossUsersPermission(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tencent/qrom/widget/RemoteViewsAdapter;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRequestedViews:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/RemoteViewsAdapter;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method private static checkInteractAcrossUsersPermission(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have permission android.permission.INTERACT_ACROSS_USERS_FULL to inflate another user\'s widget"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_0
    return-void
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1404
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1405
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1406
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 1143
    const/4 v1, -0x1

    .line 1144
    .local v1, "typeId":I
    if-eqz p1, :cond_0

    .line 1145
    const v2, 0x102025b

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1146
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1147
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1150
    :cond_0
    return v1
.end method

.method private getVisibleWindow(III)Ljava/util/ArrayList;
    .locals 3
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v1, "window":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 1355
    :cond_1
    return-object v1

    .line 1341
    :cond_2
    if-gt p1, p2, :cond_3

    .line 1342
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1348
    .end local v0    # "i":I
    :cond_3
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 1349
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1351
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-gt v0, p2, :cond_1

    .line 1352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private loadNextIndexInBackground()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$2;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1276
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 1278
    .local v1, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1291
    iget-object v7, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v7

    .line 1292
    :try_start_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1293
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    .line 1299
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v7

    monitor-enter v7

    .line 1300
    :try_start_2
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    iget v4, v6, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1301
    .local v4, "newCount":I
    iget v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iget v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    invoke-direct {p0, v6, v8, v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->getVisibleWindow(III)Ljava/util/ArrayList;

    move-result-object v5

    .line 1303
    .local v5, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1308
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1311
    .local v2, "i":I
    if-ge v2, v4, :cond_0

    .line 1312
    invoke-direct {p0, v2, v9}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    goto :goto_0

    .line 1279
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newCount":I
    .end local v5    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteViewsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 1285
    :catch_1
    move-exception v0

    .line 1286
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "RemoteViewsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1293
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1303
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1317
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newCount":I
    .restart local v5    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v7, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;

    invoke-direct {v7, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$5;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1330
    iput-boolean v9, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    goto :goto_1
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 982
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 987
    .local v0, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 988
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 989
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 991
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 992
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 993
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter$3;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$3;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void

    .line 989
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 992
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private requestBindService()Z
    .locals 4

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZ)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "notifyWhenLoaded"    # Z

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v8

    .line 1034
    .local v8, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v2, 0x0

    .line 1035
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    const-wide/16 v3, 0x0

    .line 1037
    .local v3, "itemId":J
    :try_start_0
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1038
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 1039
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .line 1051
    if-nez v2, :cond_0

    .line 1055
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in updateRemoteViews("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "): "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, " null RemoteViews "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "returned from RemoteViewsFactory."

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v7

    .line 1041
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in updateRemoteViews("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "): "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1047
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in updateRemoteViews("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "): "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1060
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_0
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v9

    .line 1061
    .local v9, "layoutId":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v10

    .line 1064
    .local v10, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v10

    .line 1065
    :try_start_1
    invoke-virtual {v10, v9}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    move-result v12

    .line 1066
    .local v12, "viewTypeInRange":Z
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1300(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    iget v6, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1067
    .local v6, "cacheCount":I
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1068
    iget-object v13, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v13

    .line 1069
    if-eqz v12, :cond_2

    .line 1070
    :try_start_2
    iget v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iget v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->getVisibleWindow(III)Ljava/util/ArrayList;

    move-result-object v5

    .line 1073
    .local v5, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;JLjava/util/ArrayList;)V

    .line 1077
    move-object v11, v2

    .line 1078
    .local v11, "rv":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;

    invoke-direct {v1, p0, p1, v11}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$4;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1094
    .end local v5    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "rv":Landroid/widget/RemoteViews;
    :cond_1
    :goto_1
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1067
    .end local v6    # "cacheCount":I
    .end local v12    # "viewTypeInRange":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1091
    .restart local v6    # "cacheCount":I
    .restart local v12    # "viewTypeInRange":Z
    :cond_2
    :try_start_4
    const-string v0, "RemoteViewsAdapter"

    const-string v1, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private updateTemporaryMetaData()V
    .locals 9

    .prologue
    .line 1002
    iget-object v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v8}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 1007
    .local v2, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v4

    .line 1008
    .local v4, "hasStableIds":Z
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v7

    .line 1009
    .local v7, "viewTypeCount":I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    .line 1010
    .local v0, "count":I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 1011
    .local v5, "loadingView":Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 1012
    .local v3, "firstView":Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    if-nez v5, :cond_0

    .line 1013
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 1015
    :cond_0
    iget-object v8, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v8}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    .line 1016
    .local v6, "tmpMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1017
    :try_start_1
    iput-boolean v4, v6, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 1019
    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 1020
    iput v0, v6, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1021
    invoke-virtual {v6, v5, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1022
    monitor-exit v6

    .line 1028
    .end local v0    # "count":I
    .end local v3    # "firstView":Landroid/widget/RemoteViews;
    .end local v4    # "hasStableIds":Z
    .end local v5    # "loadingView":Landroid/widget/RemoteViews;
    .end local v6    # "tmpMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7    # "viewTypeCount":I
    :goto_0
    return-void

    .line 1022
    .restart local v0    # "count":I
    .restart local v3    # "firstView":Landroid/widget/RemoteViews;
    .restart local v4    # "hasStableIds":Z
    .restart local v5    # "loadingView":Landroid/widget/RemoteViews;
    .restart local v6    # "tmpMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v7    # "viewTypeCount":I
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1023
    .end local v0    # "count":I
    .end local v3    # "firstView":Landroid/widget/RemoteViews;
    .end local v4    # "hasStableIds":Z
    .end local v5    # "loadingView":Landroid/widget/RemoteViews;
    .end local v6    # "tmpMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7    # "viewTypeCount":I
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1025
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 904
    return-void

    .line 902
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1103
    .local v0, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1104
    :try_start_0
    iget v1, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 1105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1114
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v2

    .line 1118
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "typeId":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 1125
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 1130
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1133
    .local v0, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1134
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :goto_0
    return v2

    .line 1128
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1135
    .restart local v0    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    move-result v16

    .line 1168
    .local v16, "isInCache":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v15

    .line 1169
    .local v15, "isConnected":Z
    const/4 v13, 0x0

    .line 1171
    .local v13, "hasNewItems":Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v3, :cond_0

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRequestedViews:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object/from16 v0, p2

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1175
    :cond_0
    if-nez v16, :cond_2

    if-nez v15, :cond_2

    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->requestBindService()Z

    .line 1184
    :goto_0
    if-eqz v16, :cond_8

    .line 1185
    const/4 v10, 0x0

    .line 1186
    .local v10, "convertViewChild":Landroid/view/View;
    const/4 v11, 0x0

    .line 1187
    .local v11, "convertViewTypeId":I
    const/16 v17, 0x0

    .line 1189
    .local v17, "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v3, :cond_9

    .line 1190
    move-object/from16 v0, p2

    check-cast v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v17, v0

    .line 1191
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1192
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->getConvertViewTypeId(Landroid/view/View;)I

    move-result v11

    move-object/from16 v18, v17

    .line 1197
    .end local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v18, "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1198
    .local v9, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v21

    .line 1199
    .local v21, "rv":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v14

    .line 1200
    .local v14, "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    iget v0, v14, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    move/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    .local v22, "typeId":I
    if-eqz v18, :cond_5

    .line 1205
    move/from16 v0, v22

    if-ne v11, v0, :cond_3

    .line 1206
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1235
    if-eqz v13, :cond_1

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_1
    monitor-exit v23

    move-object/from16 v19, v18

    .line 1251
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v11    # "convertViewTypeId":I
    .end local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :goto_2
    return-object v19

    .line 1181
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    goto :goto_0

    .line 1209
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "convertViewChild":Landroid/view/View;
    .restart local v11    # "convertViewTypeId":I
    .restart local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :cond_3
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v17, v18

    .line 1215
    .end local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v20

    .line 1216
    .local v20, "newView":Landroid/view/View;
    const v3, 0x102025b

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1218
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1235
    if-eqz v13, :cond_4

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_4
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v17

    goto :goto_2

    .line 1211
    .end local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v20    # "newView":Landroid/view/View;
    .restart local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_5
    :try_start_6
    new-instance v17, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .end local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_3

    .line 1221
    .end local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_0
    move-exception v12

    move-object/from16 v17, v18

    .line 1224
    .end local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_4
    :try_start_7
    const-string v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inflating RemoteViews at position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", using"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "loading view instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v19, 0x0

    .line 1228
    .local v19, "loadingView":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    .line 1229
    .local v2, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1230
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static/range {v2 .. v8}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$2000(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v19

    .line 1232
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1235
    if-eqz v13, :cond_6

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_6
    monitor-exit v23

    goto/16 :goto_2

    .line 1253
    .end local v2    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v11    # "convertViewTypeId":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "hasNewItems":Z
    .end local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v15    # "isConnected":Z
    .end local v16    # "isInCache":Z
    .end local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v19    # "loadingView":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v3

    .line 1232
    .restart local v2    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "convertViewChild":Landroid/view/View;
    .restart local v11    # "convertViewTypeId":I
    .restart local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "hasNewItems":Z
    .restart local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v15    # "isConnected":Z
    .restart local v16    # "isInCache":Z
    .restart local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v19    # "loadingView":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :catchall_1
    move-exception v3

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1235
    .end local v2    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "loadingView":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v13, :cond_7

    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_7
    throw v3

    .line 1240
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v11    # "convertViewTypeId":I
    .end local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :cond_8
    const/16 v19, 0x0

    .line 1241
    .restart local v19    # "loadingView":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    .line 1242
    .restart local v2    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1243
    :try_start_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    # invokes: Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static/range {v2 .. v8}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$2000(Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v19

    .line 1245
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1247
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRequestedViews:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1251
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 1245
    :catchall_3
    move-exception v3

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1235
    .end local v2    # "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v19    # "loadingView":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "convertViewChild":Landroid/view/View;
    .restart local v11    # "convertViewTypeId":I
    .restart local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :catchall_4
    move-exception v3

    move-object/from16 v17, v18

    .end local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_5

    .line 1221
    :catch_1
    move-exception v12

    goto/16 :goto_4

    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "indexMetaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :cond_9
    move-object/from16 v18, v17

    .end local v17    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v18    # "layout":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1258
    .local v0, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1259
    :try_start_0
    iget v1, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1388
    const/4 v0, 0x0

    .line 1389
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1399
    :goto_0
    return v0

    .line 1391
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1394
    :cond_0
    const/4 v0, 0x1

    .line 1395
    goto :goto_0

    .line 1389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1265
    .local v0, "metaData":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1266
    :try_start_0
    iget-boolean v1, v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDataReady()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mDataReady:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1360
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1364
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mServiceConnection:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    if-eqz v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1369
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1370
    invoke-direct {p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->requestBindService()Z

    goto :goto_0

    .line 1374
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qrom/widget/RemoteViewsAdapter$6;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$6;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public saveRemoteViewsCache()V
    .locals 8

    .prologue
    .line 915
    new-instance v0, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v4, Landroid/content/Intent$FilterComparison;

    iget-object v5, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v5, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {v0, v4, v5, v6}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;II)V

    .line 918
    .local v0, "key":Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v5, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v5

    .line 920
    :try_start_0
    sget-object v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 921
    sget-object v6, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    sget-object v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 922
    sget-object v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_0
    const/4 v1, 0x0

    .line 926
    .local v1, "metaDataCount":I
    const/4 v2, 0x0

    .line 927
    .local v2, "numRemoteViewsCached":I
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1300(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 928
    :try_start_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1300(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    iget v1, v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 929
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    :try_start_2
    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
    :try_start_3
    iget-object v4, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1400(Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 932
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 933
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 934
    :try_start_4
    sget-object v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mCache:Lcom/tencent/qrom/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_1
    new-instance v3, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/qrom/widget/RemoteViewsAdapter$1;-><init>(Lcom/tencent/qrom/widget/RemoteViewsAdapter;Lcom/tencent/qrom/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    .line 950
    .local v3, "r":Ljava/lang/Runnable;
    sget-object v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v4, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 952
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 953
    return-void

    .line 929
    .end local v3    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 952
    .end local v1    # "metaDataCount":I
    .end local v2    # "numRemoteViewsCached":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 932
    .restart local v1    # "metaDataCount":I
    .restart local v2    # "numRemoteViewsCached":I
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 912
    return-void
.end method

.method public setVisibleRangeHint(II)V
    .locals 0
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 1159
    iput p1, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    .line 1160
    iput p2, p0, Lcom/tencent/qrom/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    .line 1161
    return-void
.end method

.method superNotifyDataSetChanged()V
    .locals 0

    .prologue
    .line 1383
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1384
    return-void
.end method
