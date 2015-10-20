.class Lcom/tencent/qrom/widget/TimePicker$2;
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
    .line 167
    iput-object p1, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 169
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->updateInputState()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$000(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # getter for: Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$100(Lcom/tencent/qrom/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/TimePicker;->access$102(Lcom/tencent/qrom/widget/TimePicker;Z)Z

    .line 174
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$200(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$2;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$300(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 178
    return-void

    .line 173
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
