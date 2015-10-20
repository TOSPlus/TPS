.class Lcom/tencent/qrom/widget/AbsListView$2;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;

.field final synthetic val$alwaysShow:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;Z)V
    .locals 0

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$2;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput-boolean p2, p0, Lcom/tencent/qrom/widget/AbsListView$2;->val$alwaysShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$2;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView$2;->val$alwaysShow:Z

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->access$100(Lcom/tencent/qrom/widget/AbsListView;Z)V

    .line 1371
    return-void
.end method
