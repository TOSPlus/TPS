.class Lcom/tencent/qrom/widget/TimePicker$3;
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
    .line 197
    iput-object p1, p0, Lcom/tencent/qrom/widget/TimePicker$3;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$3;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->updateInputState()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$000(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker$3;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # invokes: Lcom/tencent/qrom/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/TimePicker;->access$300(Lcom/tencent/qrom/widget/TimePicker;)V

    .line 220
    return-void
.end method
