.class Lcom/tencent/qrom/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$3;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 705
    if-eqz p2, :cond_0

    .line 706
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$3;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$3;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 709
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$3;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->access$400(Lcom/tencent/qrom/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
