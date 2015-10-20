.class Lcom/tencent/qrom/widget/TimePicker$7;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/tencent/qrom/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/TimePicker;
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
    .line 665
    iput-object p1, p0, Lcom/tencent/qrom/widget/TimePicker$7;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker$7;->this$0:Lcom/tencent/qrom/widget/TimePicker;

    # getter for: Lcom/tencent/qrom/widget/TimePicker;->mMinuteName:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/TimePicker;->access$700(Lcom/tencent/qrom/widget/TimePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
