.class public Lcom/tencent/qrom/app/TimePickerDialog;
.super Lcom/tencent/qrom/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private mButtons:[Ljava/lang/CharSequence;

.field private final mCallback:Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/tencent/qrom/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 84
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/app/TimePickerDialog;-><init>(Landroid/content/Context;ZILcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 77
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z
    .param p3, "theme"    # I
    .param p4, "callBack"    # Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;
    .param p5, "hourOfDay"    # I
    .param p6, "minute"    # I
    .param p7, "is24HourView"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;Z)V

    .line 65
    iput-object v5, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    .line 103
    iput-object p4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mCallback:Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;

    .line 104
    iput p5, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 105
    iput p6, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mInitialMinute:I

    .line 106
    iput-boolean p7, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mIs24HourView:Z

    .line 108
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/app/TimePickerDialog;->setIcon(I)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7a0e0134

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "ok":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v7

    iput-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 116
    .local v2, "themeContext":Landroid/content/Context;
    if-eqz p2, :cond_0

    .line 117
    iget-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mButtons:[Ljava/lang/CharSequence;

    new-instance v6, Lcom/tencent/qrom/app/TimePickerDialog$1;

    invoke-direct {v6, p0}, Lcom/tencent/qrom/app/TimePickerDialog$1;-><init>(Lcom/tencent/qrom/app/TimePickerDialog;)V

    invoke-virtual {p0, v4, v6}, Lcom/tencent/qrom/app/TimePickerDialog;->setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    :goto_0
    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7a03007c

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 134
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 135
    const v4, 0x7a090120

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/qrom/widget/TimePicker;

    iput-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    .line 138
    iget-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    iget-boolean v5, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 139
    iget-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    iget v5, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 140
    iget-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    iget v5, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 141
    iget-object v4, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v4, p0}, Lcom/tencent/qrom/widget/TimePicker;->setOnTimeChangedListener(Lcom/tencent/qrom/widget/TimePicker$OnTimeChangedListener;)V

    .line 142
    return-void

    .line 126
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    const v6, 0x7a0e019d

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v4, v6, p0}, Lcom/tencent/qrom/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    const/4 v6, -0x2

    const v4, 0x7a0e0135

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v4, v5

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v4}, Lcom/tencent/qrom/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/TimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/TimePickerDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tencent/qrom/app/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mCallback:Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/TimePicker;->clearFocus()V

    .line 160
    iget-object v0, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mCallback:Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qrom/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/tencent/qrom/widget/TimePicker;II)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/tencent/qrom/app/TimePickerDialog;->tryNotifyTimeSet()V

    .line 146
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "minute":I
    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 186
    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 187
    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 188
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v1, "minute"

    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onStop()V

    .line 169
    return-void
.end method

.method public onTimeChanged(Lcom/tencent/qrom/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/qrom/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 155
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 150
    iget-object v0, p0, Lcom/tencent/qrom/app/TimePickerDialog;->mTimePicker:Lcom/tencent/qrom/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 151
    return-void
.end method
