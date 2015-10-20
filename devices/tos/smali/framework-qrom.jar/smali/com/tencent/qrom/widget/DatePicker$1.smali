.class Lcom/tencent/qrom/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 205
    iput-object p1, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

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
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 207
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # invokes: Lcom/tencent/qrom/widget/DatePicker;->updateInputState()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$000(Lcom/tencent/qrom/widget/DatePicker;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DatePicker;->access$100(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$300(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 211
    if-nez p3, :cond_2

    .line 212
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/DatePicker;->setIsLunar(Z)V

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mIsLunar:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$400(Lcom/tencent/qrom/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$500(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$100(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v0

    const/16 v1, 0x323

    sub-int v2, p3, p2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->add(II)V

    .line 239
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # invokes: Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$900(Lcom/tencent/qrom/widget/DatePicker;)V

    .line 240
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # invokes: Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$1000(Lcom/tencent/qrom/widget/DatePicker;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # invokes: Lcom/tencent/qrom/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$1100(Lcom/tencent/qrom/widget/DatePicker;)V

    .line 242
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/DatePicker;->setIsLunar(Z)V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$600(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$100(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v0

    const/16 v1, 0x322

    sub-int v2, p3, p2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->add(II)V

    goto :goto_1

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$700(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$100(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;

    move-result-object v0

    const/16 v1, 0x321

    invoke-virtual {v0, v1, p3}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(II)V

    goto :goto_1

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$500(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 235
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    # invokes: Lcom/tencent/qrom/widget/DatePicker;->setDate(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/DatePicker;->access$800(Lcom/tencent/qrom/widget/DatePicker;III)V

    goto :goto_1

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$600(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 230
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$700(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 232
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker$1;->this$0:Lcom/tencent/qrom/widget/DatePicker;

    # getter for: Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker;->access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_2
.end method
