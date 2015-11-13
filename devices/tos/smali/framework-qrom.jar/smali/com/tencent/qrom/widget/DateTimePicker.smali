.class public Lcom/tencent/qrom/widget/DateTimePicker;
.super Landroid/widget/FrameLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/DateTimePicker$SavedState;,
        Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;,
        Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd/HH/mm"

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ONE_DAY_TIME:I = 0x5265c00

.field private static final sCalCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAmPmStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayDisplayValues:[Ljava/lang/String;

.field private mDayFormat:Ljava/lang/String;

.field private mDayFormatter:Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

.field private mDayLastValue:I

.field private final mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

.field mHourFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private mHourName:Ljava/lang/String;

.field private final mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mIsLunar:Z

.field private mLunarDisplayValues:[Ljava/lang/String;

.field private final mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMinuteDisplayValues:[Ljava/lang/String;

.field private mMinuteInterval:I

.field private mMinuteName:Ljava/lang/String;

.field private final mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

.field private mOnDateTimeChangedListener:Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;

.field private mTodayStr:Ljava/lang/String;

.field private mTomorrowStr:Ljava/lang/String;

.field mValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

.field private mWeekDaysStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/widget/DateTimePicker;->LOG_TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x7a0100b2

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd/HH/mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 91
    iput v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    .line 102
    iput-boolean v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsEnabled:Z

    .line 103
    const-string v3, "M-d"

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormat:Ljava/lang/String;

    .line 104
    const-string v3, "Today"

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mTodayStr:Ljava/lang/String;

    .line 105
    const-string v3, "Tomorrow"

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mTomorrowStr:Ljava/lang/String;

    .line 106
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    const-string v4, "Sun"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "Mon"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Tue"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "Wed"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "Thu"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "Fri"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "Sat"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mWeekDaysStr:[Ljava/lang/String;

    .line 107
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourName:Ljava/lang/String;

    .line 108
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteName:Ljava/lang/String;

    .line 527
    new-instance v3, Lcom/tencent/qrom/widget/DateTimePicker$1;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/DateTimePicker$1;-><init>(Lcom/tencent/qrom/widget/DateTimePicker;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    .line 718
    new-instance v3, Lcom/tencent/qrom/widget/DateTimePicker$2;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/DateTimePicker$2;-><init>(Lcom/tencent/qrom/widget/DateTimePicker;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 142
    iput-object p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0e01a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormat:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0e01a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mTodayStr:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0e01a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mTomorrowStr:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mWeekDaysStr:[Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a08000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarDisplayValues:[Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0e0182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourName:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0e0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteName:Ljava/lang/String;

    .line 151
    new-instance v3, Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    .line 152
    new-instance v3, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;-><init>(Lcom/tencent/qrom/widget/DateTimePicker;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormatter:Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

    .line 153
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-direct {p0, v3, v6}, Lcom/tencent/qrom/widget/DateTimePicker;->adjustCalendar(Ljava/util/Calendar;Z)V

    .line 154
    sget-object v3, Lcom/tencent/qrom/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 155
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    sget-object v3, Lcom/tencent/qrom/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 159
    :cond_0
    const v2, 0x7a030023

    .line 160
    .local v2, "layoutResourceId":I
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 161
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 163
    const v3, 0x7a09014a

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/NumberPicker;

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    .line 164
    const v3, 0x7a090139

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/NumberPicker;

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    .line 165
    const v3, 0x7a09013a

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/NumberPicker;

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    .line 166
    const v3, 0x7a09013b

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/NumberPicker;

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    .line 168
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 169
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 170
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 171
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mValueChangeListener:Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    .line 176
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updatePickers()V

    .line 178
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateMinOrMaxDate()V

    .line 179
    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateAmPmLabel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/widget/DateTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    return v0
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/qrom/widget/DateTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/qrom/widget/DateTimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mWeekDaysStr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/qrom/widget/DateTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/tencent/qrom/widget/DateTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mTodayStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/widget/DateTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/DateTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayLastValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/tencent/qrom/widget/DateTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayLastValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/DateTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/qrom/widget/DateTimePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/widget/DateTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$902(Lcom/tencent/qrom/widget/DateTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DateTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z

    return p1
.end method

.method private adjustCalendar(Ljava/util/Calendar;Z)V
    .locals 4
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "adjustForward"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xc

    .line 310
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 311
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 312
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    rem-int v0, v1, v2

    .line 313
    .local v0, "reminMinute":I
    if-eqz v0, :cond_0

    .line 314
    if-eqz p2, :cond_1

    .line 315
    iget v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    neg-int v1, v0

    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method private checkDisplayeValid(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 3
    .param p1, "picker"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p2, "toMin"    # I
    .param p3, "toMax"    # I

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "display":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 424
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 426
    :cond_0
    return-void
.end method

.method private formatDay(III)Ljava/lang/String;
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormatter:Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;-><init>(Lcom/tencent/qrom/widget/DateTimePicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormatter:Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayFormatter:Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 252
    :goto_0
    return-object v2

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 250
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 251
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(J)Z
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mOnDateTimeChangedListener:Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mOnDateTimeChangedListener:Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(Lcom/tencent/qrom/widget/DateTimePicker;J)V

    .line 670
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    const/4 v1, 0x1

    .line 301
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/tencent/qrom/widget/DateTimePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yyyy/MM/dd/HH/mm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 498
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z

    .line 505
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 506
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 515
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 509
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z

    .line 510
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 511
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 232
    new-instance v0, Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    .line 233
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/tencent/qrom/widget/DateTimePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    .line 234
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/tencent/qrom/widget/DateTimePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private updateAmPmLabel()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 523
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setLabel(Ljava/lang/String;I)V

    goto :goto_0

    .line 522
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateDayPicker()V
    .locals 14

    .prologue
    .line 335
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-direct {p0, v10, v11, v12}, Lcom/tencent/qrom/widget/DateTimePicker;->checkDisplayeValid(Lcom/tencent/qrom/widget/NumberPicker;II)V

    .line 336
    const/4 v5, 0x1

    .line 337
    .local v5, "isLoop":Z
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 338
    .local v8, "minTime":J
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v12}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 339
    .local v6, "maxTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_4

    long-to-double v10, v8

    const-wide v12, 0x41b2064200000000L    # 3.024E8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    .line 340
    const/4 v5, 0x0

    .line 347
    :goto_0
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 348
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 349
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v10, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 350
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v10}, Lcom/tencent/qrom/widget/NumberPicker;->getMaxValue()I

    move-result v10

    iget-object v11, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v11}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v1, v10, 0x1

    .line 351
    .local v1, "count":I
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v10, v10

    if-eq v10, v1, :cond_1

    .line 352
    :cond_0
    new-array v10, v1, [Ljava/lang/String;

    iput-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    .line 354
    :cond_1
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v10}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v2

    .line 355
    .local v2, "cv":I
    sget-object v10, Lcom/tencent/qrom/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 356
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_2

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 358
    sget-object v10, Lcom/tencent/qrom/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v10, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 360
    :cond_2
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 361
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-direct {p0, v11, v12, v13}, Lcom/tencent/qrom/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 363
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    const/4 v10, 0x3

    if-gt v3, v10, :cond_6

    .line 364
    const/4 v10, 0x6

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 365
    add-int v10, v2, v3

    rem-int/lit8 v4, v10, 0x7

    .line 366
    .local v4, "index":I
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_3

    .line 367
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-direct {p0, v11, v12, v13}, Lcom/tencent/qrom/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 363
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "count":I
    .end local v2    # "cv":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_5

    long-to-double v10, v6

    const-wide v12, 0x41b2064200000000L    # 3.024E8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_5

    .line 342
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 344
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 371
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v1    # "count":I
    .restart local v2    # "cv":I
    .restart local v3    # "i":I
    :cond_6
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    const/4 v3, 0x1

    :goto_2
    const/4 v10, 0x3

    if-gt v3, v10, :cond_8

    .line 373
    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 374
    sub-int v10, v2, v3

    add-int/lit8 v10, v10, 0x7

    rem-int/lit8 v4, v10, 0x7

    .line 375
    .restart local v4    # "index":I
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_7

    .line 376
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-direct {p0, v11, v12, v13}, Lcom/tencent/qrom/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 372
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 380
    .end local v4    # "index":I
    :cond_8
    iget-object v10, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v11, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private updateHourPicker()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 384
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 386
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 392
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 393
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/DateTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 394
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 389
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method

.method private updateLunarPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 323
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 324
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 325
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 326
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setSlowScroller(Z)V

    .line 332
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method private updateMinOrMaxDate()V
    .locals 12

    .prologue
    .line 776
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 777
    .local v11, "tempCalendar":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 778
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 779
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v1, 0x7f4

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    const/16 v6, 0x3b

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 780
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 781
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 782
    .local v9, "diffStartTime":J
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 783
    .local v7, "diffEndTime":J
    cmp-long v0, v9, v7

    if-ltz v0, :cond_0

    .line 784
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 785
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 786
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->setMaxDate(J)V

    .line 792
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 789
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 790
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->setMinDate(J)V

    goto :goto_0
.end method

.method private updateMinutePicker()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x0

    .line 397
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    div-int v4, v6, v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v5, v4}, Lcom/tencent/qrom/widget/DateTimePicker;->checkDisplayeValid(Lcom/tencent/qrom/widget/NumberPicker;II)V

    .line 398
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 399
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    div-int v4, v6, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 400
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 401
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/NumberPicker;->getMaxValue()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 402
    .local v0, "count":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v0, :cond_2

    .line 403
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    .line 404
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 405
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 409
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    div-int v2, v3, v4

    .line 410
    .local v2, "minuteValue":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 411
    return-void
.end method

.method private updatePickers()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateLunarPicker()V

    .line 415
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDayPicker()V

    .line 416
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateAmPmLabel()V

    .line 417
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateHourPicker()V

    .line 418
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateMinutePicker()V

    .line 419
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/DateTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 260
    return-void
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 479
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v0

    .line 480
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 485
    :goto_0
    return-object v1

    .line 482
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 483
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 485
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHourOfDay()I
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getTime()Landroid/text/format/Time;
    .locals 3

    .prologue
    .line 450
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "t":Landroid/text/format/Time;
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 452
    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(JLcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "onDateTimeChangedListener"    # Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDateTime(J)V

    .line 287
    iput-object p3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mOnDateTimeChangedListener:Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;

    .line 288
    return-void
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsLunar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/DateTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 219
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 209
    const/16 v0, 0x14

    .line 210
    .local v0, "flags":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 270
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;

    .line 271
    .local v0, "ss":Lcom/tencent/qrom/widget/DateTimePicker$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 272
    # getter for: Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mIsLunar:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->access$100(Lcom/tencent/qrom/widget/DateTimePicker$SavedState;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->setIsLunar(Z)V

    .line 273
    # getter for: Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->mTime:J
    invoke-static {v0}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;->access$200(Lcom/tencent/qrom/widget/DateTimePicker$SavedState;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDateTime(J)V

    .line 274
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 265
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->isLunar()Z

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;ZJLcom/tencent/qrom/widget/DateTimePicker$1;)V

    return-object v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/DateTimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 494
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mHourPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinutePicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 191
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 456
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 469
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 462
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIs24HourView:Z

    .line 463
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateHourPicker()V

    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/DateTimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 468
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateAmPmLabel()V

    goto :goto_0
.end method

.method public setIsLunar(Z)V
    .locals 2
    .param p1, "isLunar"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mIsLunar:Z

    .line 602
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDayPicker()V

    .line 604
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 605
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLunarSpinnerVisibility(Z)V
    .locals 2
    .param p1, "isLunar"    # Z

    .prologue
    .line 612
    iget-object v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setVisibility(I)V

    .line 613
    if-nez p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mLunarPicker:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 615
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/DateTimePicker;->setIsLunar(Z)V

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->invalidate()V

    .line 618
    return-void

    .line 612
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 9
    .param p1, "maxDate"    # J

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 755
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 756
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 757
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 773
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 762
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/utils/ChineseCalendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 763
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 765
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v7}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 766
    .local v3, "maxTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 767
    const-wide/32 v5, 0x5265c00

    div-long v5, v3, v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 768
    .local v2, "day":I
    rem-int/lit8 v5, v2, 0x7

    rsub-int/lit8 v1, v5, 0x6

    .line 769
    .local v1, "cv":I
    iput v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayLastValue:I

    .line 770
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 772
    .end local v1    # "cv":I
    .end local v2    # "day":I
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updatePickers()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 9
    .param p1, "minDate"    # J

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 730
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 731
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 732
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 748
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v5, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 737
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/utils/ChineseCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 738
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v6, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 740
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v5}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 741
    .local v3, "minTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 742
    const-wide/32 v5, 0x5265c00

    div-long v5, v3, v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 743
    .local v2, "day":I
    rem-int/lit8 v1, v2, 0x7

    .line 744
    .local v1, "cv":I
    iput v1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayLastValue:I

    .line 745
    iget-object v5, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mDayPicker:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 747
    .end local v1    # "cv":I
    .end local v2    # "day":I
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updatePickers()V

    goto :goto_0
.end method

.method public setMinuteInterval(I)V
    .locals 2
    .param p1, "minuteInterval"    # I

    .prologue
    .line 429
    iget v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    if-ne v0, p1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mMinuteInterval:I

    .line 433
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->adjustCalendar(Ljava/util/Calendar;Z)V

    .line 434
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateMinutePicker()V

    goto :goto_0
.end method

.method public updateDateTime(J)V
    .locals 2
    .param p1, "timeInMillis"    # J

    .prologue
    .line 438
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 439
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->adjustCalendar(Ljava/util/Calendar;Z)V

    .line 440
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updateMinOrMaxDate()V

    .line 441
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DateTimePicker;->updatePickers()V

    .line 442
    return-void
.end method

.method public updateDateTime(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tencent/qrom/widget/DateTimePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDateTime(J)V

    .line 447
    return-void
.end method
