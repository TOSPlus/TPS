.class Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2336
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->performLongClick()Z

    .line 2341
    return-void
.end method
