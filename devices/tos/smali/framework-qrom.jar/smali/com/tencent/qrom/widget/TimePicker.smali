.class public Lcom/tencent/qrom/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/TimePicker$SavedState;,
        Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NO_OP_CHANGE_LISTENER:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mHourFormat:C

.field mHourFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private mHourName:Ljava/lang/String;

.field private final mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private final mImageViewDivider:Landroid/widget/ImageView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field mMinuteFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

.field private mMinuteName:Ljava/lang/String;

.field private final mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/widget/TimePicker;->LOG_TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/tencent/qrom/widget/TimePicker$1;

    invoke-direct {v0}, Lcom/tencent/qrom/widget/TimePicker$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const v0, 0x7a0100b0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const v9, 0x7a090087

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    iput-boolean v8, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsEnabled:Z

    .line 658
    new-instance v4, Lcom/tencent/qrom/widget/TimePicker$6;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/widget/TimePicker$6;-><init>(Lcom/tencent/qrom/widget/TimePicker;)V

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 665
    new-instance v4, Lcom/tencent/qrom/widget/TimePicker$7;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/widget/TimePicker$7;-><init>(Lcom/tencent/qrom/widget/TimePicker;)V

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0e0182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourName:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a0e0183

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteName:Ljava/lang/String;

    .line 155
    sget-object v4, Lcom/tencent/qrom/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 157
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    const v4, 0x7a03007b

    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 159
    .local v3, "layoutResourceId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 163
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    const v4, 0x7a09011d

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/NumberPicker;

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 167
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    new-instance v5, Lcom/tencent/qrom/widget/TimePicker$2;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/widget/TimePicker$2;-><init>(Lcom/tencent/qrom/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 180
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 181
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 190
    const v4, 0x7a09011e

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/NumberPicker;

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 191
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v7}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 192
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 193
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/tencent/qrom/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 195
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v5, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 197
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    new-instance v5, Lcom/tencent/qrom/widget/TimePicker$3;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/widget/TimePicker$3;-><init>(Lcom/tencent/qrom/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 222
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 223
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 228
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7a080002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 231
    const v4, 0x7a090121

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mImageViewDivider:Landroid/widget/ImageView;

    .line 234
    const v4, 0x7a09011f

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "amPmView":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 236
    iput-object v10, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 237
    iput-object v10, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 238
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 239
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Lcom/tencent/qrom/widget/TimePicker$4;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/widget/TimePicker$4;-><init>(Lcom/tencent/qrom/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-le v4, v5, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->getHourFormatData()V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateHourControl()V

    .line 271
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateMinuteControl()V

    .line 272
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateAmPmControl()V

    .line 274
    sget-object v4, Lcom/tencent/qrom/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->setOnTimeChangedListener(Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;)V

    .line 277
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 278
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 280
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/TimePicker;->setEnabled(Z)V

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->setContentDescriptions()V

    .line 286
    return-void

    .line 248
    .restart local v0    # "amPmView":Landroid/view/View;
    :cond_2
    iput-object v10, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 249
    check-cast v0, Lcom/tencent/qrom/widget/NumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    .line 250
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v7}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 251
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v8}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 252
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v5, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    new-instance v5, Lcom/tencent/qrom/widget/TimePicker$5;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/widget/TimePicker$5;-><init>(Lcom/tencent/qrom/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->setOnValueChangedListener(Lcom/tencent/qrom/widget/NumberPicker$OnValueChangeListener;)V

    .line 262
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 263
    iget-object v4, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/TimePicker;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteName:Ljava/lang/String;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 288
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 289
    .local v2, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Lcom/tencent/qrom/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_2

    const-string v6, "Hm"

    :goto_0
    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 292
    .local v5, "lengthPattern":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 293
    const/4 v3, 0x0

    .line 296
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 297
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 298
    .local v1, "c":C
    const/16 v6, 0x48

    if-eq v1, v6, :cond_0

    const/16 v6, 0x68

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x6b

    if-ne v1, v6, :cond_3

    .line 299
    :cond_0
    iput-char v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourFormat:C

    .line 300
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    .line 301
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 306
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 289
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "i":I
    .end local v5    # "lengthPattern":I
    :cond_2
    const-string v6, "hm"

    goto :goto_0

    .line 296
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "i":I
    .restart local v5    # "lengthPattern":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 605
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mOnTimeChangedListener:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mOnTimeChangedListener:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/tencent/qrom/widget/TimePicker;II)V

    .line 608
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x7a090088

    const v2, 0x7a090086

    .line 612
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e018f

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/qrom/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 614
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0190

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/qrom/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 617
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0191

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/qrom/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 619
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0192

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/qrom/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 622
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0193

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/qrom/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 625
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const v1, 0x7a0e0194

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/qrom/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 628
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 445
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 450
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z

    .line 452
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 453
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 461
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateAmPmControl()V

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 464
    if-eqz p2, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 456
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z

    .line 457
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 348
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 631
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 632
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 635
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/NumberPicker;->setVisibility(I)V

    .line 600
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 601
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 589
    :cond_1
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 590
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 591
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 593
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 589
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 595
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-char v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 552
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourFormatter:Lcom/tencent/qrom/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setFormatter(Lcom/tencent/qrom/widget/NumberPicker$Formatter;)V

    .line 569
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 555
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 559
    :cond_1
    iget-char v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 560
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 561
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->setMinValue(I)V

    .line 564
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 644
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 647
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 650
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 653
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v0

    .line 427
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 432
    :goto_0
    return-object v1

    .line 429
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 430
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 432
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 335
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 336
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 534
    const/4 v0, 0x1

    .line 535
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 536
    or-int/lit16 v0, v0, 0x80

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 541
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 542
    iget-object v2, p0, Lcom/tencent/qrom/widget/TimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    return-void

    .line 538
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 407
    move-object v0, p1

    check-cast v0, Lcom/tencent/qrom/widget/TimePicker$SavedState;

    .line 408
    .local v0, "ss":Lcom/tencent/qrom/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 409
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 411
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 401
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 402
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/tencent/qrom/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/tencent/qrom/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/tencent/qrom/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 441
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/NumberPicker;->setValue(I)V

    .line 516
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mMinuteSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mHourSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmSpinner:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/NumberPicker;->setEnabled(Z)V

    .line 324
    :goto_1
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 475
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 492
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/TimePicker;->mIs24HourView:Z

    .line 482
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->getHourFormatData()V

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateHourControl()V

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 490
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateMinuteControl()V

    .line 491
    invoke-direct {p0}, Lcom/tencent/qrom/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/tencent/qrom/widget/TimePicker;->mOnTimeChangedListener:Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;

    .line 420
    return-void
.end method
