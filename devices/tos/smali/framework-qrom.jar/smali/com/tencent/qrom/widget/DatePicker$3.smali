.class Lcom/tencent/qrom/widget/DatePicker$3;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/tencent/qrom/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/tencent/qrom/widget/DatePicker$3;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker$3;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mYearName:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DatePicker;->access$1700(Lcom/tencent/qrom/widget/DatePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
