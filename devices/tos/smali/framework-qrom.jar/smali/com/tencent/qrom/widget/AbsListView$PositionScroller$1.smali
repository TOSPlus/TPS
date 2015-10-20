.class Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView$PositionScroller;I)V
    .locals 0

    .prologue
    .line 4617
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;->this$1:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(I)V

    .line 4620
    return-void
.end method
