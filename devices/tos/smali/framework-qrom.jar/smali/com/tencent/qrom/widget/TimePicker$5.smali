.class Lcom/tencent/qrom/widget/TimePicker$5;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/tencent/qrom/widget/TimePicker$5;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$5;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->updateInputState()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$000(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 256
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/NumberPicker;->requestFocus()Z

    .line 257
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker$5;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$5;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # getter for: Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$100(Lcom/tencent/qrom/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/TimePicker;->access$102(Lcom/tencent/qrom/widget/TimePicker;Z)Z

    .line 258
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$5;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$200(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 259
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$5;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$300(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 260
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
