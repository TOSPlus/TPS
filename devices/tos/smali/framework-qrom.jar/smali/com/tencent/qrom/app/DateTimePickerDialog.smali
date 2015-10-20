.class public Lcom/tencent/qrom/app/DateTimePickerDialog;
.super Lcom/tencent/qrom/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# static fields
.field private static final TIME:Ljava/lang/String; = "time"


# instance fields
.field private mButtons:[Ljava/lang/CharSequence;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;

.field private final mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

.field private mPickerButtons:Landroid/widget/RelativeLayout;

.field private mPositiveButton:Landroid/widget/TextView;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;
    .param p4, "time"    # J

    .prologue
    .line 95
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/app/DateTimePickerDialog;-><init>(Landroid/content/Context;ZILcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;J)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;
    .param p3, "time"    # J

    .prologue
    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/app/DateTimePickerDialog;-><init>(Landroid/content/Context;ILcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;J)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z
    .param p3, "theme"    # I
    .param p4, "callBack"    # Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;
    .param p5, "time"    # J

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;Z)V

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mTitleNeedsUpdate:Z

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    .line 101
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mCallBack:Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7a0e0134

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "ok":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 109
    .local v11, "themeContext":Landroid/content/Context;
    if-eqz p2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/tencent/qrom/app/DateTimePickerDialog$1;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/app/DateTimePickerDialog$1;-><init>(Lcom/tencent/qrom/app/DateTimePickerDialog;)V

    invoke-virtual {p0, v2, v4}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setIcon(I)V

    .line 122
    const-string v2, "layout_inflater"

    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 124
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7a030024

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, "view":Landroid/view/View;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setView(Landroid/view/View;IIII)V

    .line 126
    const v2, 0x7a09013c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/DateTimePicker;

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    .line 127
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1, p0}, Lcom/tencent/qrom/widget/DateTimePicker;->init(JLcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 128
    const v2, 0x7a090160

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 129
    const v2, 0x7a090161

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    .line 130
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7a0a0019

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 133
    .local v8, "bRipple":Z
    if-eqz v8, :cond_0

    .line 134
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-le v2, v4, :cond_3

    .line 135
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    new-instance v4, Lcom/tencent/qrom/app/DateTimePickerDialog$2;

    invoke-direct {v4, p0}, Lcom/tencent/qrom/app/DateTimePickerDialog$2;-><init>(Lcom/tencent/qrom/app/DateTimePickerDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .end local v8    # "bRipple":Z
    :cond_1
    return-void

    .line 117
    .end local v3    # "view":Landroid/view/View;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, -0x1

    const v4, 0x7a0e019d

    invoke-virtual {v11, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 118
    const/4 v4, -0x2

    const v2, 0x7a0e0135

    invoke-virtual {v11, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 138
    .restart local v3    # "view":Landroid/view/View;
    .restart local v8    # "bRipple":Z
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/DateTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/DateTimePickerDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mCallBack:Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/DateTimePicker;->clearFocus()V

    .line 182
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mCallBack:Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qrom/app/DateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Lcom/tencent/qrom/widget/DateTimePicker;J)V

    .line 184
    :cond_0
    return-void
.end method

.method private updateTitle(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 212
    iget-boolean v1, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x18016

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDateTimePicker()Lcom/tencent/qrom/widget/DateTimePicker;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    return-object v0
.end method

.method public getTitleNeedsUpdate()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mTitleNeedsUpdate:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->tryNotifyDateSet()V

    .line 154
    return-void
.end method

.method public onDateTimeChanged(Lcom/tencent/qrom/widget/DateTimePicker;J)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/qrom/widget/DateTimePicker;
    .param p2, "time"    # J

    .prologue
    .line 207
    invoke-virtual {p1, p2, p3, p0}, Lcom/tencent/qrom/widget/DateTimePicker;->init(JLcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 208
    invoke-direct {p0, p2, p3}, Lcom/tencent/qrom/app/DateTimePickerDialog;->updateTitle(J)V

    .line 209
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 202
    const-string v2, "time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 203
    .local v0, "time":J
    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v2, v0, v1, p0}, Lcom/tencent/qrom/widget/DateTimePicker;->init(JLcom/tencent/qrom/widget/DateTimePicker$OnDateTimeChangedListener;)V

    .line 204
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 194
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "time"

    iget-object v2, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onStop()V

    .line 190
    return-void
.end method

.method public setPickerPositiveBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 233
    if-lez p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DateTimePickerDialog;->setPickerPositiveBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setPickerPositiveBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPickerPositiveVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 229
    iget-object v1, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mPickerButtons:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleNeedsUpdate(Z)V
    .locals 0
    .param p1, "needsUpdate"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mTitleNeedsUpdate:Z

    .line 222
    return-void
.end method

.method public updateDate(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/qrom/app/DateTimePickerDialog;->mDateTimePicker:Lcom/tencent/qrom/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/widget/DateTimePicker;->updateDateTime(J)V

    .line 177
    return-void
.end method
