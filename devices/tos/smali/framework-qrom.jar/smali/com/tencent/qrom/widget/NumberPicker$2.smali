.class Lcom/tencent/qrom/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 669
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$2;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 671
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$2;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$000(Lcom/tencent/qrom/widget/NumberPicker;)V

    .line 672
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$2;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7a090086

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$2;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$300(Lcom/tencent/qrom/widget/NumberPicker;ZJ)V

    .line 678
    :goto_0
    return v2

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$2;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v1, 0x0

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$300(Lcom/tencent/qrom/widget/NumberPicker;ZJ)V

    goto :goto_0
.end method
