.class Lcom/tencent/qrom/app/TencentResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TencentResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/TencentResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/TencentResolverActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/TencentResolverActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentResolverActivity$1;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentResolverActivity$1;->this$0:Lcom/tencent/qrom/app/TencentResolverActivity;

    # getter for: Lcom/tencent/qrom/app/TencentResolverActivity;->mAdapter:Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/tencent/qrom/app/TencentResolverActivity;->access$000(Lcom/tencent/qrom/app/TencentResolverActivity;)Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/app/TencentResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 106
    return-void
.end method
