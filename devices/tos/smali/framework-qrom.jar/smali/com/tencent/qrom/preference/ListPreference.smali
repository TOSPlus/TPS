.class public Lcom/tencent/qrom/preference/ListPreference;
.super Lcom/tencent/qrom/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mListHeight:I

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/tencent/qrom/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mListHeight:I

    .line 50
    sget-object v1, Landroid/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget-object v1, Landroid/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/qrom/preference/ListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/preference/ListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 218
    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 217
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/tencent/qrom/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 206
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/tencent/qrom/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/DialogPreference;->onDialogClosed(Z)V

    .line 285
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 295
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/tencent/qrom/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/tencent/qrom/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/tencent/qrom/app/AlertDialog$Builder;)V

    .line 234
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 240
    iget v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mListHeight:I

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setListHeight(I)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/ListPreference;->getShowFromBottom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/tencent/qrom/preference/ListPreference$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/preference/ListPreference$1;-><init>(Lcom/tencent/qrom/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setBottomButtonSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {p1, v3, v3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {p1, v3, v3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 279
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/tencent/qrom/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/tencent/qrom/preference/ListPreference$2;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/preference/ListPreference$2;-><init>(Lcom/tencent/qrom/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {p1, v3, v3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/tencent/qrom/preference/ListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 327
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 324
    check-cast v0, Lcom/tencent/qrom/preference/ListPreference$SavedState;

    .line 325
    .local v0, "myState":Lcom/tencent/qrom/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 326
    iget-object v1, v0, Lcom/tencent/qrom/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 305
    invoke-super {p0}, Lcom/tencent/qrom/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 306
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/ListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 311
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/tencent/qrom/preference/ListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 312
    .local v0, "myState":Lcom/tencent/qrom/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qrom/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 313
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 301
    return-void

    .line 300
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 81
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public setListViewHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 359
    iput p1, p0, Lcom/tencent/qrom/preference/ListPreference;->mListHeight:I

    .line 360
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/qrom/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/qrom/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method
