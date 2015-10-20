.class public abstract Lcom/tencent/qrom/preference/TwoStatePreference;
.super Lcom/tencent/qrom/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSendClickAccessibilityEvent:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->onClick()V

    .line 66
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 67
    .local v0, "newValue":Z
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :goto_1
    return-void

    .line 66
    .end local v0    # "newValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    .restart local v0    # "newValue":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;

    .line 271
    .local v0, "myState":Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 272
    iget-boolean v1, v0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 252
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 257
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 258
    .local v0, "myState":Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/qrom/preference/TwoStatePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 259
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;->setChecked(Z)V

    .line 196
    return-void

    .line 194
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 203
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 205
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 207
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 210
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 211
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-boolean v2, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    if-eq v2, p1, :cond_2

    move v0, v1

    .line 84
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_1

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    .line 86
    iput-boolean v1, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mCheckedSet:Z

    .line 87
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->notifyChanged()V

    .line 93
    :cond_1
    return-void

    .line 83
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 185
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->notifyChanged()V

    .line 148
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->notifyChanged()V

    .line 120
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    iget-boolean v3, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    .line 107
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 106
    .end local v0    # "shouldDisable":Z
    :cond_2
    iget-boolean v3, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    const v4, 0x7a0900f4    # 1.77841E35f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 220
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 221
    const/4 v3, 0x1

    .line 222
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 223
    iget-object v4, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const/4 v3, 0x0

    .line 230
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 232
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v3, 0x0

    .line 238
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 239
    .local v0, "newVisibility":I
    if-nez v3, :cond_2

    .line 241
    const/4 v0, 0x0

    .line 243
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 244
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_3
    return-void

    .line 225
    .restart local v3    # "useDefaultSummary":Z
    :cond_4
    iget-boolean v4, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/tencent/qrom/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v3, 0x0

    goto :goto_0
.end method
