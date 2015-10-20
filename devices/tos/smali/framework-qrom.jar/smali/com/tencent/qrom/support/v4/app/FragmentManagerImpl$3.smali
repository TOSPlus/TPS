.class Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->popBackStack(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 495
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->this$0:Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    iget-object v1, v1, Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    const/4 v3, -0x1

    iget v4, p0, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl$3;->val$flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 496
    return-void
.end method
