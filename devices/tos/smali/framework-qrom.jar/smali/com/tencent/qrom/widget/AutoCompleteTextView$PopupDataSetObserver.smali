.class Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$1;

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    # getter for: Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->access$700(Lcom/tencent/qrom/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    new-instance v1, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1280
    :cond_0
    return-void
.end method
