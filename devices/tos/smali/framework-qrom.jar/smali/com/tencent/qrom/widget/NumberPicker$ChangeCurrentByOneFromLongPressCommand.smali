.class Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/tencent/qrom/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2301
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2305
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2306
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/tencent/qrom/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$200(Lcom/tencent/qrom/widget/NumberPicker;Z)V

    .line 2312
    return-void
.end method
