.class Lcom/tencent/qrom/widget/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/tencent/qrom/widget/FastScroller$2;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/tencent/qrom/widget/FastScroller$2;->this$0:Lcom/tencent/qrom/widget/FastScroller;

    const/4 v1, 0x0

    # invokes: Lcom/tencent/qrom/widget/FastScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/FastScroller;->access$600(Lcom/tencent/qrom/widget/FastScroller;I)V

    .line 244
    return-void
.end method
