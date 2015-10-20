.class Lcom/tencent/qrom/app/QromListFragment$1;
.super Ljava/lang/Object;
.source "QromListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromListFragment;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromListFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/qrom/app/QromListFragment$1;->this$0:Lcom/tencent/qrom/app/QromListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/qrom/app/QromListFragment$1;->this$0:Lcom/tencent/qrom/app/QromListFragment;

    iget-object v0, v0, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromListFragment$1;->this$0:Lcom/tencent/qrom/app/QromListFragment;

    iget-object v1, v1, Lcom/tencent/qrom/app/QromListFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 157
    return-void
.end method
