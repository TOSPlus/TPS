.class public Lcom/tencent/qrom/app/CheckBoxDialog;
.super Lcom/tencent/qrom/app/AlertDialog;
.source "CheckBoxDialog.java"


# instance fields
.field private mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

.field private mCheckBoxMsg:Ljava/lang/CharSequence;

.field private mCheckState:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const v0, 0x7a0f0017

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/CheckBoxDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckState:Z

    .line 63
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/CheckBoxDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "checkBoxMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/app/CheckBoxDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/tencent/qrom/app/CheckBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/tencent/qrom/app/CheckBoxDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "checkBoxMsg"    # Ljava/lang/CharSequence;
    .param p4, "hasCheck"    # Z

    .prologue
    .line 73
    new-instance v0, Lcom/tencent/qrom/app/CheckBoxDialog;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/CheckBoxDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "dialog":Lcom/tencent/qrom/app/CheckBoxDialog;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/CheckBoxDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/tencent/qrom/app/CheckBoxDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0, p3}, Lcom/tencent/qrom/app/CheckBoxDialog;->setCheckBoxMsg(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, p4}, Lcom/tencent/qrom/app/CheckBoxDialog;->setCheckBoxState(Z)V

    .line 78
    invoke-virtual {v0}, Lcom/tencent/qrom/app/CheckBoxDialog;->show()V

    .line 79
    return-object v0
.end method


# virtual methods
.method public getCheckBoxState()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/tencent/qrom/app/CheckBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7a03000e    # 1.70048E35f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 88
    const v2, 0x7a090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mMessageView:Landroid/widget/TextView;

    .line 89
    const v2, 0x7a090111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/CheckBox;

    iput-object v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    .line 94
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/CheckBoxDialog;->setView(Landroid/view/View;)V

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/CheckBoxDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBoxMsg:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBoxMsg:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/CheckBoxDialog;->setCheckBoxMsg(Ljava/lang/CharSequence;)V

    .line 104
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckState:Z

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/CheckBoxDialog;->setCheckBoxState(Z)V

    .line 105
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public setCheckBoxMsg(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBoxMsg:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCheckBoxState(Z)V
    .locals 1
    .param p1, "checkState"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckBox:Lcom/tencent/qrom/widget/CheckBox;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/CheckBox;->setChecked(Z)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mCheckState:Z

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/CheckBoxDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method
