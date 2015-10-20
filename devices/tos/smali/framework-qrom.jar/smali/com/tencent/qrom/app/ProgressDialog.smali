.class public Lcom/tencent/qrom/app/ProgressDialog;
.super Lcom/tencent/qrom/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressStyle:I

    .line 76
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->initFormats()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressStyle:I

    .line 81
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->initFormats()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/ProgressDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/ProgressDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/ProgressDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/ProgressDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/ProgressDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 87
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 88
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/qrom/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/tencent/qrom/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/tencent/qrom/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 97
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/qrom/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qrom/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/tencent/qrom/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 102
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qrom/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qrom/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qrom/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 108
    new-instance v0, Lcom/tencent/qrom/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "dialog":Lcom/tencent/qrom/app/ProgressDialog;
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/tencent/qrom/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/tencent/qrom/app/ProgressDialog;->setIndeterminate(Z)V

    .line 112
    invoke-virtual {v0, p4}, Lcom/tencent/qrom/app/ProgressDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {v0, p5}, Lcom/tencent/qrom/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    invoke-virtual {v0}, Lcom/tencent/qrom/app/ProgressDialog;->show()V

    .line 115
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 262
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 271
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7a09003b

    .line 120
    invoke-virtual {p0}, Lcom/tencent/qrom/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 129
    new-instance v2, Lcom/tencent/qrom/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/app/ProgressDialog$1;-><init>(Lcom/tencent/qrom/app/ProgressDialog;)V

    iput-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 155
    const v2, 0x7a030011

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 157
    const v2, 0x7a09006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 158
    const v2, 0x7a09006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 160
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 170
    :goto_0
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_0

    .line 171
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setMax(I)V

    .line 173
    :cond_0
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_1

    .line 174
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setProgress(I)V

    .line 176
    :cond_1
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_2

    .line 177
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 179
    :cond_2
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_3

    .line 180
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->incrementProgressBy(I)V

    .line 182
    :cond_3
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_4

    .line 183
    iget v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 186
    iget-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 189
    iget-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_6
    iget-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 192
    iget-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    :cond_7
    iget-boolean v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/ProgressDialog;->setIndeterminate(Z)V

    .line 195
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 196
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 197
    return-void

    .line 163
    .end local v1    # "view":Landroid/view/View;
    :cond_8
    const v2, 0x7a030051

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 165
    const v2, 0x7a090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onStart()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mHasStarted:Z

    .line 203
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/tencent/qrom/app/AlertDialog;->onStop()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mHasStarted:Z

    .line 209
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 253
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 311
    iget v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 214
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 336
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 348
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 349
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgressStyle:I

    .line 323
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 223
    invoke-direct {p0}, Lcom/tencent/qrom/app/ProgressDialog;->onProgressChanged()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
