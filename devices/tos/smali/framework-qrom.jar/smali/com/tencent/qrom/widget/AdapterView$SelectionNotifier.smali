.class Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 843
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AdapterView;Lcom/tencent/qrom/widget/AdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AdapterView$1;

    .prologue
    .line 843
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;-><init>(Lcom/tencent/qrom/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 845
    .local p0, "this":Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;, "Lcom/tencent/qrom/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    iget-boolean v0, v0, Lcom/tencent/qrom/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AdapterView$SelectionNotifier;->this$0:Lcom/tencent/qrom/widget/AdapterView;

    # invokes: Lcom/tencent/qrom/widget/AdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/AdapterView;->access$200(Lcom/tencent/qrom/widget/AdapterView;)V

    goto :goto_0
.end method
