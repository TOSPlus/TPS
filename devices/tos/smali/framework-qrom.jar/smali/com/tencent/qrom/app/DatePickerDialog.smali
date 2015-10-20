.class public Lcom/tencent/qrom/app/DatePickerDialog;
.super Lcom/tencent/qrom/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private mButtons:[Ljava/lang/CharSequence;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

.field private mPickerButtons:Landroid/widget/RelativeLayout;

.field private mPositiveButton:Landroid/widget/TextView;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 113
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/app/DatePickerDialog;-><init>(Landroid/content/Context;ZILcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;III)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 94
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;III)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z
    .param p3, "theme"    # I
    .param p4, "callBack"    # Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;Z)V

    .line 56
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 57
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    .line 58
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 59
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    .line 120
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCallBack:Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7a0e0134

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "ok":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    .line 126
    invoke-virtual {p0}, Lcom/tencent/qrom/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 127
    .local v12, "themeContext":Landroid/content/Context;
    if-eqz p2, :cond_2

    .line 128
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    new-instance v5, Lcom/tencent/qrom/app/DatePickerDialog$1;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/app/DatePickerDialog$1;-><init>(Lcom/tencent/qrom/app/DatePickerDialog;)V

    invoke-virtual {p0, v3, v5}, Lcom/tencent/qrom/app/DatePickerDialog;->setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/app/DatePickerDialog;->setIcon(I)V

    .line 140
    const-string v3, "layout_inflater"

    invoke-virtual {v12, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 142
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7a030022

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 143
    .local v4, "view":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/qrom/app/DatePickerDialog;->setView(Landroid/view/View;IIII)V

    .line 144
    const v3, 0x7a090117

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qrom/widget/DatePicker;

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    .line 145
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v3, v0, v1, v2, p0}, Lcom/tencent/qrom/widget/DatePicker;->init(IIILcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;)V

    .line 146
    const v3, 0x7a090161

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    .line 147
    const v3, 0x7a090160

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 148
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7a0a0019

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 150
    .local v9, "bRipple":Z
    if-eqz v9, :cond_0

    .line 151
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-le v3, v5, :cond_3

    .line 152
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    new-instance v5, Lcom/tencent/qrom/app/DatePickerDialog$2;

    invoke-direct {v5, p0}, Lcom/tencent/qrom/app/DatePickerDialog$2;-><init>(Lcom/tencent/qrom/app/DatePickerDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .end local v9    # "bRipple":Z
    :cond_1
    return-void

    .line 135
    .end local v4    # "view":Landroid/view/View;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const/4 v3, -0x1

    const v5, 0x7a0e019d

    invoke-virtual {v12, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Lcom/tencent/qrom/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    const/4 v5, -0x2

    const v3, 0x7a0e0135

    invoke-virtual {v12, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Lcom/tencent/qrom/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 155
    .restart local v4    # "view":Landroid/view/View;
    .restart local v9    # "bRipple":Z
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/DatePickerDialog;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tencent/qrom/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCallBack:Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/DatePicker;->clearFocus()V

    .line 204
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCallBack:Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    iget-object v2, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/qrom/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/tencent/qrom/widget/DatePicker;III)V

    .line 207
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x1

    .line 218
    iget-boolean v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 220
    iget-object v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 221
    iget-object v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 222
    iget-object v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iput-boolean v5, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 229
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/tencent/qrom/widget/DatePicker;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    return-object v0
.end method

.method public getTitleNeedsUpdate()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/tencent/qrom/app/DatePickerDialog;->tryNotifyDateSet()V

    .line 171
    return-void
.end method

.method public onDateChanged(Lcom/tencent/qrom/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/qrom/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/tencent/qrom/widget/DatePicker;->init(IIILcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;)V

    .line 175
    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/qrom/app/DatePickerDialog;->updateTitle(III)V

    .line 176
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 243
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 245
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "day":I
    iget-object v3, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/tencent/qrom/widget/DatePicker;->init(IIILcom/tencent/qrom/widget/DatePicker$OnDateChangedListener;)V

    .line 247
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v1, "month"

    iget-object v2, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "day"

    iget-object v2, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onStop()V

    .line 213
    return-void
.end method

.method public setPickerPositiveBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 264
    if-lez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/tencent/qrom/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DatePickerDialog;->setPickerPositiveBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_0
    return-void
.end method

.method public setPickerPositiveBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPickerPositiveVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 260
    iget-object v1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleNeedsUpdate(Z)V
    .locals 0
    .param p1, "needsUpdate"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 252
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/tencent/qrom/app/DatePickerDialog;->mDatePicker:Lcom/tencent/qrom/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/widget/DatePicker;->updateDate(III)V

    .line 199
    return-void
.end method
