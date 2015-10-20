.class Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/tencent/qrom/widget/AbsListView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 2847
    iput-object p1, p0, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AbsListView;Lcom/tencent/qrom/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AbsListView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AbsListView$1;

    .prologue
    .line 2847
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;-><init>(Lcom/tencent/qrom/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$400(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 2852
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;->this$0:Lcom/tencent/qrom/widget/AbsListView;

    # invokes: Lcom/tencent/qrom/widget/AbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/tencent/qrom/widget/AbsListView;->access$500(Lcom/tencent/qrom/widget/AbsListView;)I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
