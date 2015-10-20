.class Lcom/tencent/qrom/widget/DatePicker$6;
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
    .line 995
    iput-object p1, p0, Lcom/tencent/qrom/widget/DatePicker$6;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 998
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$6;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mChineseDateNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$2000(Lcom/tencent/qrom/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
