.class public abstract Lcom/tencent/qrom/preference/DialogPreference;
.super Lcom/tencent/qrom/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/tencent/qrom/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private bShowBottom:Z

.field private mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

.field private mDialog:Lcom/tencent/qrom/app/QromDialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    .line 71
    sget-object v1, Landroid/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 74
    iget-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 79
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 80
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 81
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 82
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 83
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogLayoutResId:I

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private requestInputMethod(Lcom/tencent/qrom/app/QromDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/tencent/qrom/app/QromDialog;

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 332
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 333
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/tencent/qrom/app/QromDialog;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShowFromBottom()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    return v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 360
    const v3, 0x7a090038

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 364
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 366
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 368
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    const/4 v2, 0x0

    .line 374
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 375
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 381
    iput p2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mWhichButtonClicked:I

    .line 382
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 344
    iget v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 349
    :goto_0
    return-object v1

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 349
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 400
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Lcom/tencent/qrom/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 389
    iget v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->onDialogClosed(Z)V

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/tencent/qrom/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/tencent/qrom/app/AlertDialog$Builder;

    .prologue
    .line 260
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 438
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/tencent/qrom/preference/DialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 449
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 444
    check-cast v0, Lcom/tencent/qrom/preference/DialogPreference$SavedState;

    .line 445
    .local v0, "myState":Lcom/tencent/qrom/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 446
    iget-boolean v1, v0, Lcom/tencent/qrom/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, v0, Lcom/tencent/qrom/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 425
    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 426
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2}, Lcom/tencent/qrom/app/QromDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 433
    :goto_0
    return-object v0

    .line 430
    :cond_1
    new-instance v0, Lcom/tencent/qrom/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 431
    .local v0, "myState":Lcom/tencent/qrom/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/qrom/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 432
    iget-object v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2}, Lcom/tencent/qrom/app/QromDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qrom/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogLayoutResId:I

    .line 240
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 130
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 211
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 183
    return-void
.end method

.method public setShowFromBottom(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    .line 487
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 277
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mWhichButtonClicked:I

    .line 279
    iget-boolean v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    if-eqz v3, :cond_2

    .line 280
    new-instance v3, Lcom/tencent/qrom/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    invoke-direct {v3, v1, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 293
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 296
    iget-object v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 301
    :goto_1
    iget-object v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/tencent/qrom/app/AlertDialog$Builder;)V

    .line 303
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/qrom/preference/PreferenceManager;->registerOnActivityDestroyListener(Lcom/tencent/qrom/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 306
    iget-object v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->create(Z)Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 307
    .local v2, "dialog":Lcom/tencent/qrom/app/QromDialog;
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {v2, p1}, Lcom/tencent/qrom/app/QromDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-direct {p0, v2}, Lcom/tencent/qrom/preference/DialogPreference;->requestInputMethod(Lcom/tencent/qrom/app/QromDialog;)V

    .line 313
    :cond_1
    invoke-virtual {v2, p0}, Lcom/tencent/qrom/app/QromDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    invoke-virtual {v2}, Lcom/tencent/qrom/app/QromDialog;->show()V

    .line 315
    return-void

    .line 286
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "dialog":Lcom/tencent/qrom/app/QromDialog;
    :cond_2
    new-instance v3, Lcom/tencent/qrom/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->bShowBottom:Z

    const v5, 0x7a0f001d

    invoke-direct {v3, v1, v4, v5}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;ZI)V

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    goto :goto_0

    .line 298
    .restart local v0    # "contentView":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/preference/DialogPreference;->mBuilder:Lcom/tencent/qrom/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tencent/qrom/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    goto :goto_1
.end method
