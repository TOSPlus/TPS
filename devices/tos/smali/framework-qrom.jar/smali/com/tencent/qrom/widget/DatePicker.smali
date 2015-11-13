.class public Lcom/tencent/qrom/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/DatePicker$SavedState;,
        Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCalendarChange:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mChineseDateNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field mDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private mDayName:Ljava/lang/String;

.field private final mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mIsLunar:Z

.field private mLunarCalendars:[Ljava/lang/String;

.field mLunarDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private final mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

.field private mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

.field mMonthFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private mMonthName:Ljava/lang/String;

.field private final mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field mYearFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private mYearName:Ljava/lang/String;

.field private final mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    const v0, 0x7a0100b1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 175
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mIsLunar:Z

    .line 108
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mChineseDateNames:[Ljava/lang/String;

    .line 109
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearName:Ljava/lang/String;

    .line 110
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthName:Ljava/lang/String;

    .line 111
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDayName:Ljava/lang/String;

    .line 134
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "MM/dd/yyyy"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 146
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mIsEnabled:Z

    .line 941
    new-instance v13, Lcom/tencent/qrom/widget/DatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/DatePicker$2;-><init>(Lcom/tencent/qrom/widget/DatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mCalendarChange:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 976
    new-instance v13, Lcom/tencent/qrom/widget/DatePicker$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/DatePicker$3;-><init>(Lcom/tencent/qrom/widget/DatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 982
    new-instance v13, Lcom/tencent/qrom/widget/DatePicker$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/DatePicker$4;-><init>(Lcom/tencent/qrom/widget/DatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 988
    new-instance v13, Lcom/tencent/qrom/widget/DatePicker$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/DatePicker$5;-><init>(Lcom/tencent/qrom/widget/DatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 995
    new-instance v13, Lcom/tencent/qrom/widget/DatePicker$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tencent/qrom/widget/DatePicker$6;-><init>(Lcom/tencent/qrom/widget/DatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 176
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/qrom/widget/DatePicker;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7a080007

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mChineseDateNames:[Ljava/lang/String;

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7a08000a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarCalendars:[Ljava/lang/String;

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7a0e017f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearName:Ljava/lang/String;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7a0e0180

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthName:Ljava/lang/String;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7a0e0181

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDayName:Ljava/lang/String;

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/tencent/qrom/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 186
    sget-object v13, Lcom/tencent/qrom/R$styleable;->DatePicker:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 188
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 190
    .local v11, "spinnersShown":Z
    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 192
    .local v4, "calendarViewShown":Z
    const/4 v13, 0x0

    const/16 v14, 0x7b2

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 194
    .local v12, "startYear":I
    const/4 v13, 0x1

    const/16 v14, 0x7f4

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 195
    .local v5, "endYear":I
    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "minDate":Ljava/lang/String;
    const/4 v13, 0x5

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "maxDate":Ljava/lang/String;
    const/4 v13, 0x6

    const v14, 0x7a030021

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 199
    .local v7, "layoutResourceId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 203
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v7, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 205
    new-instance v10, Lcom/tencent/qrom/widget/DatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/tencent/qrom/widget/DatePicker$1;-><init>(Lcom/tencent/qrom/widget/DatePicker;)V

    .line 245
    .local v10, "onChangeListener":Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;
    const v13, 0x7a090112

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 252
    const v13, 0x7a09014b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Lcom/tencent/qrom/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v13, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarCalendars:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setSlowScroller(Z)V

    .line 263
    const v13, 0x7a090114

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/DatePicker;->mDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Lcom/tencent/qrom/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v13, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v14, 0x7a090087

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 270
    const v13, 0x7a090113

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Lcom/tencent/qrom/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v13, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v14, 0x7a090087

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 277
    const v13, 0x7a090115

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/qrom/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Lcom/tencent/qrom/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v13, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v14, 0x7a090087

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 294
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/tencent/qrom/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 301
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/tencent/qrom/widget/DatePicker;->setMinDate(J)V

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 305
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/tencent/qrom/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 312
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/tencent/qrom/widget/DatePicker;->setMaxDate(J)V

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/tencent/qrom/widget/DatePicker;->init(IIILcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;)V

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/DatePicker;->reorderSpinners()V

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/widget/DatePicker;->setContentDescriptions()V

    .line 326
    :cond_2
    return-void

    .line 299
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_0

    .line 310
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/utils/ChineseCalendar;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tencent/qrom/widget/DatePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/qrom/widget/DatePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/widget/DatePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mDayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tencent/qrom/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mChineseDateNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/DatePicker;)Lcom/tencent/qrom/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/widget/DatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/qrom/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/DatePicker;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 548
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 553
    :goto_0
    return-object v2

    .line 550
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 551
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 552
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 660
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 819
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mOnDateChangedListener:Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mOnDateChangedListener:Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/tencent/qrom/widget/DatePicker;III)V

    .line 822
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    const/4 v1, 0x1

    .line 655
    :goto_0
    return v1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/tencent/qrom/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 563
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 564
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 566
    .local v1, "order":[C
    array-length v2, v1

    .line 567
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 568
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 582
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 570
    :sswitch_0
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/tencent/qrom/widget/DatePicker;->setImeOptions(Lcom/tencent/qrom/widget/NumberPicker;II)V

    .line 567
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :sswitch_1
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/tencent/qrom/widget/DatePicker;->setImeOptions(Lcom/tencent/qrom/widget/NumberPicker;II)V

    goto :goto_1

    .line 578
    :sswitch_2
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/tencent/qrom/widget/DatePicker;->setImeOptions(Lcom/tencent/qrom/widget/NumberPicker;II)V

    goto :goto_1

    .line 585
    :cond_0
    return-void

    .line 568
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x7a090088

    const v2, 0x7a090086

    .line 844
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0197    # 1.843346E35f

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/qrom/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 846
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0198

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/qrom/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 849
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0195

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/qrom/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 851
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0196

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/qrom/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 854
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0199

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/qrom/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 856
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e019a

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/qrom/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 858
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 502
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    :cond_0
    return-void

    .line 506
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 508
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/tencent/qrom/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 512
    new-instance v1, Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    .line 513
    new-instance v1, Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    .line 514
    new-instance v1, Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    .line 516
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mNumberOfMonths:I

    .line 517
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 519
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/utils/ChineseCalendar;->set(III)V

    .line 667
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/tencent/qrom/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/tencent/qrom/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 833
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 834
    const/4 v0, 0x5

    .line 838
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x7a090087

    invoke-virtual {p1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 839
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 840
    return-void

    .line 836
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 861
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 862
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 863
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 865
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 873
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 874
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 875
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 877
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 880
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 883
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 12

    .prologue
    .line 676
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 677
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 678
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 679
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 680
    iget-boolean v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsLunar:Z

    if-eqz v9, :cond_7

    .line 681
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mLunarDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 682
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 683
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 684
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x321

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChinesMonths(I)[Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "months":[Ljava/lang/String;
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x321

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x321

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 687
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x322

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 688
    .local v5, "minMonth":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x322

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v4

    .line 689
    .local v4, "maxMonth":I
    sub-int v9, v4, v5

    add-int/lit8 v6, v9, 0x1

    .line 690
    .local v6, "monthCount":I
    new-array v8, v6, [Ljava/lang/String;

    .line 691
    .local v8, "tempMonths":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v9, v8

    if-ge v0, v9, :cond_0

    .line 692
    add-int v9, v5, v0

    aget-object v9, v7, v9

    aput-object v9, v8, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    move-object v7, v8

    .line 695
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v9, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 696
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v9, v4}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 697
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 698
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x322

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x322

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 700
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 701
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 702
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 734
    .end local v0    # "i":I
    .end local v4    # "maxMonth":I
    .end local v5    # "minMonth":I
    .end local v6    # "monthCount":I
    .end local v8    # "tempMonths":[Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v9, v7}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 735
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x321

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v9

    invoke-static {v9}, Lcom/tencent/qrom/utils/ChineseCalendar;->getChineseLeapMonth(I)I

    move-result v2

    .line 738
    .local v2, "leapMonth":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x322

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v3

    .line 739
    .local v3, "lunarMonth":I
    move v1, v3

    .line 740
    .local v1, "index":I
    if-lez v2, :cond_2

    .line 741
    if-ltz v3, :cond_1

    if-le v3, v2, :cond_2

    .line 742
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 745
    :cond_2
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 746
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x321

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 747
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 784
    .end local v1    # "index":I
    .end local v2    # "leapMonth":I
    .end local v3    # "lunarMonth":I
    .end local v7    # "months":[Ljava/lang/String;
    :goto_2
    return-void

    .line 704
    .restart local v0    # "i":I
    .restart local v4    # "maxMonth":I
    .restart local v5    # "minMonth":I
    .restart local v6    # "monthCount":I
    .restart local v7    # "months":[Ljava/lang/String;
    .restart local v8    # "tempMonths":[Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 705
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 706
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_1

    .line 709
    .end local v0    # "i":I
    .end local v4    # "maxMonth":I
    .end local v5    # "minMonth":I
    .end local v6    # "monthCount":I
    .end local v8    # "tempMonths":[Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x321

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x321

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 711
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 712
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x322

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 713
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 714
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v10, 0x322

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x322

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 716
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 717
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 718
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_1

    .line 720
    :cond_5
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 721
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 722
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_1

    .line 725
    :cond_6
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 726
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x323

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 727
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 729
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 730
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/16 v11, 0x322

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 731
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_1

    .line 750
    .end local v7    # "months":[Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 751
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 752
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mDayFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 769
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 770
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 771
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 772
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 773
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 774
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 776
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 777
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 778
    iget-object v9, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v10, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    goto/16 :goto_2
.end method

.method private usingNumericMonths()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 423
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
    .line 607
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 608
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 637
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/DatePicker;->setDate(III)V

    .line 638
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    .line 639
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V

    .line 640
    iput-object p4, p0, Lcom/tencent/qrom/widget/DatePicker;->mOnDateChangedListener:Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;

    .line 641
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsLunar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 439
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 440
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 430
    const/16 v0, 0x14

    .line 431
    .local v0, "flags":I
    iget-object v2, p0, Lcom/tencent/qrom/widget/DatePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 618
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/DatePicker$SavedState;

    .line 619
    .local v0, "ss":Lcom/tencent/qrom/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 620
    # getter for: Lcom/tencent/qrom/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker$SavedState;->access$1300(Lcom/tencent/qrom/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/tencent/qrom/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker$SavedState;->access$1400(Lcom/tencent/qrom/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/tencent/qrom/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/DatePicker$SavedState;->access$1500(Lcom/tencent/qrom/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/qrom/widget/DatePicker;->setDate(III)V

    .line 621
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    .line 622
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V

    .line 623
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 612
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 613
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/qrom/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/tencent/qrom/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 476
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mDaySpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMonthSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 412
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setIsLunar(Z)V
    .locals 2
    .param p1, "isLunar"    # Z

    .prologue
    .line 950
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/DatePicker;->mIsLunar:Z

    .line 951
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    .line 952
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 956
    return-void

    .line 952
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLunarSpinnerVisibility(Z)V
    .locals 2
    .param p1, "isLunar"    # Z

    .prologue
    .line 963
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setVisibility(I)V

    .line 964
    if-nez p1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mLunarSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 966
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/DatePicker;->setIsLunar(Z)V

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->invalidate()V

    .line 969
    return-void

    .line 963
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 388
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 395
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMaxDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 397
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 352
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/utils/ChineseCalendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 358
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/tencent/qrom/widget/DatePicker;->mCurrentDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mMinDate:Lcom/tencent/qrom/utils/ChineseCalendar;

    invoke-virtual {v1}, Lcom/tencent/qrom/utils/ChineseCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/utils/ChineseCalendar;->setTimeInMillis(J)V

    .line 360
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 493
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    return-void

    .line 493
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setYearSpinnerVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 972
    iget-object v1, p0, Lcom/tencent/qrom/widget/DatePicker;->mYearSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setVisibility(I)V

    .line 973
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/DatePicker;->invalidate()V

    .line 974
    return-void

    .line 972
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 595
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/DatePicker;->setDate(III)V

    .line 599
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateSpinners()V

    .line 600
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->updateCalendarView()V

    .line 601
    invoke-direct {p0}, Lcom/tencent/qrom/widget/DatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
