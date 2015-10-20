.class Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

.field final synthetic val$boundPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AbsListView$PositionScroller;II)V
    .locals 0

    .prologue
    .line 4674
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;->this$1:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    iput p2, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;->val$position:I

    iput p3, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;->val$boundPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4676
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;->this$1:Lcom/tencent/qrom/widget/AbsListView$PositionScroller;

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;->val$position:I

    iget v2, p0, Lcom/tencent/qrom/widget/AbsListView$PositionScroller$2;->val$boundPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/widget/AbsListView$PositionScroller;->start(II)V

    .line 4677
    return-void
.end method
