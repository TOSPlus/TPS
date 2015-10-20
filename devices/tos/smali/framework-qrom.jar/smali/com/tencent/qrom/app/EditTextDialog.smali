.class public Lcom/tencent/qrom/app/EditTextDialog;
.super Lcom/tencent/qrom/app/AlertDialog;
.source "EditTextDialog.java"


# instance fields
.field private mEditString:Ljava/lang/CharSequence;

.field private mEditText:Landroid/widget/EditText;

.field private mHasStarted:Z

.field private mInputType:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const v0, 0x7a0f0017

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/EditTextDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mInputType:I

    .line 69
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/EditTextDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/qrom/app/EditTextDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/tencent/qrom/app/EditTextDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/tencent/qrom/app/EditTextDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "inputType"    # I

    .prologue
    .line 76
    new-instance v0, Lcom/tencent/qrom/app/EditTextDialog;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/EditTextDialog;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "dialog":Lcom/tencent/qrom/app/EditTextDialog;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/EditTextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, p2}, Lcom/tencent/qrom/app/EditTextDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, p3}, Lcom/tencent/qrom/app/EditTextDialog;->setInputType(I)V

    .line 80
    invoke-virtual {v0}, Lcom/tencent/qrom/app/EditTextDialog;->show()V

    .line 81
    return-object v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/tencent/qrom/app/EditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7a03000f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 89
    const v2, 0x7a090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessageView:Landroid/widget/TextView;

    .line 90
    const v2, 0x7a090110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    .line 91
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/EditTextDialog;->setView(Landroid/view/View;)V

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/EditTextDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditString:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/EditTextDialog;->setEditTextText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_2
    iget v2, p0, Lcom/tencent/qrom/app/EditTextDialog;->mInputType:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/EditTextDialog;->setInputType(I)V

    .line 101
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public setEditTextText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "editString"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 131
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditString:Ljava/lang/CharSequence;

    goto :goto_0

    .line 134
    .restart local v0    # "pos":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mInputType:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/EditTextDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method
