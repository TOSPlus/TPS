.class Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    # getter for: Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->access$700(Lcom/tencent/qrom/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1272
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    # invokes: Lcom/tencent/qrom/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->access$800(Lcom/tencent/qrom/widget/AutoCompleteTextView;I)V

    .line 1277
    :cond_0
    return-void
.end method
