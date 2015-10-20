.class Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/tencent/qrom/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2288
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$702(Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2288
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 2295
    return-void
.end method
