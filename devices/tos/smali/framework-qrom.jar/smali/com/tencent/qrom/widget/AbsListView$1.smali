.class Lcom/tencent/qrom/widget/AbsListView$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AbsListView;->setFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView;Z)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$1;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iput-boolean p2, p0, Lcom/tencent/qrom/widget/AbsListView$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$1;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/AbsListView$1;->val$enabled:Z

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/AbsListView;->access$000(Lcom/tencent/qrom/widget/AbsListView;Z)V

    .line 1321
    return-void
.end method
