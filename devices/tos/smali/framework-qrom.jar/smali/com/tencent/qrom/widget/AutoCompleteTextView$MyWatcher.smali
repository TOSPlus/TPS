.class Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$1;

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->doAfterTextChanged()V

    .line 753
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;->this$0:Lcom/tencent/qrom/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->doBeforeTextChanged()V

    .line 756
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 758
    return-void
.end method
