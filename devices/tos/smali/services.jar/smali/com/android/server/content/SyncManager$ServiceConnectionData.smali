.class Lcom/android/server/content/SyncManager$ServiceConnectionData;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionData"
.end annotation


# instance fields
.field public final activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

.field public final syncAdapter:Landroid/content/ISyncAdapter;

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V
    .locals 0
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p3, "syncAdapter"    # Landroid/content/ISyncAdapter;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput-object p2, p0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1767
    iput-object p3, p0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->syncAdapter:Landroid/content/ISyncAdapter;

    .line 1768
    return-void
.end method
