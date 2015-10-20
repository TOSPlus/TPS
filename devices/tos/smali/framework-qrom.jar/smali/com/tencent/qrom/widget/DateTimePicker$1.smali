.class Lcom/tencent/qrom/widget/DateTimePicker$1;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/widget/DateTimePicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 6
    .param p1, "picker"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v0, 0x1

    .line 530
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->access$300(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 531
    if-nez p3, :cond_0

    .line 532
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/DateTimePicker;->setIsLunar(Z)V

    .line 555
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # invokes: Lcom/tencent/qrom/widget/DateTimePicker;->notifyDateChanged()V
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1300(Lcom/tencent/qrom/widget/DateTimePicker;)V

    .line 556
    return-void

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->setIsLunar(Z)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->access$400(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 537
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->access$500(Lcom/tencent/qrom/widget/DateTimePicker;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v1, v1, 0x7

    if-ne v1, v0, :cond_2

    .line 538
    .local v0, "increase":I
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$600(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->add(II)V

    .line 539
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {p1}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v2

    # setter for: Lcom/tencent/qrom/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {v1, v2}, Lcom/tencent/qrom/widget/DateTimePicker;->access$502(Lcom/tencent/qrom/widget/DateTimePicker;I)I

    .line 540
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # invokes: Lcom/tencent/qrom/widget/DateTimePicker;->updateDayPicker()V
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$700(Lcom/tencent/qrom/widget/DateTimePicker;)V

    goto :goto_0

    .line 537
    .end local v0    # "increase":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->access$800(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v2

    if-ne p1, v2, :cond_8

    .line 542
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->is24HourView()Z

    move-result v2

    if-nez v2, :cond_6

    .line 543
    if-ne p2, v4, :cond_4

    if-eq p3, v5, :cond_5

    :cond_4
    if-ne p2, v5, :cond_6

    if-ne p3, v4, :cond_6

    .line 545
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v3}, Lcom/tencent/qrom/widget/DateTimePicker;->access$900(Lcom/tencent/qrom/widget/DateTimePicker;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    # setter for: Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v2, v0}, Lcom/tencent/qrom/widget/DateTimePicker;->access$902(Lcom/tencent/qrom/widget/DateTimePicker;Z)Z

    .line 546
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # invokes: Lcom/tencent/qrom/widget/DateTimePicker;->updateAmPmLabel()V
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1000(Lcom/tencent/qrom/widget/DateTimePicker;)V

    .line 549
    :cond_6
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$600(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(II)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 545
    goto :goto_2

    .line 550
    :cond_8
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1100(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_9

    .line 551
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$600(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1200(Lcom/tencent/qrom/widget/DateTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker$1;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v3}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1100(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(II)V

    goto/16 :goto_0

    .line 553
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
