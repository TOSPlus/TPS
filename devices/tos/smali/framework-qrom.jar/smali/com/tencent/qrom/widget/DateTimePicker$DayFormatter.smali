.class Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;
.super Ljava/text/SimpleDateFormat;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayFormatter"
.end annotation


# instance fields
.field currentDay:I

.field currentMonth:I

.field currentYear:I

.field private mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

.field final synthetic this$0:Lcom/tencent/qrom/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/widget/DateTimePicker;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 565
    iput-object p1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 561
    const/16 v1, 0x7b2

    iput v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentYear:I

    .line 562
    iput v4, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentMonth:I

    .line 563
    iput v4, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentDay:I

    .line 566
    new-instance v1, Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-direct {v1, p2}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    .line 567
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 568
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentDay:I

    .line 569
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentMonth:I

    .line 570
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentYear:I

    .line 571
    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormat:Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1400(Lcom/tencent/qrom/widget/DateTimePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 573
    .local v0, "symbols":Ljava/text/DateFormatSymbols;
    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mWeekDaysStr:[Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1500(Lcom/tencent/qrom/widget/DateTimePicker;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormatSymbols;->setShortWeekdays([Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 575
    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 578
    const-string v0, ""

    .line 579
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(III)V

    .line 580
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mIsLunar:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1600(Lcom/tencent/qrom/widget/DateTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v3, 0x322

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v3, 0x323

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinese(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_0
    iget v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentYear:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentMonth:I

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->currentDay:I

    if-ne p3, v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->this$0:Lcom/tencent/qrom/widget/DateTimePicker;

    # getter for: Lcom/tencent/qrom/widget/DateTimePicker;->mTodayStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DateTimePicker;->access$1700(Lcom/tencent/qrom/widget/DateTimePicker;)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    return-object v0

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->mTempCalendar:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
