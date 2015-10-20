.class Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->popBackStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$2;->this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 479
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$2;->this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$2;->this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    iget-object v1, v1, Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 480
    return-void
.end method
