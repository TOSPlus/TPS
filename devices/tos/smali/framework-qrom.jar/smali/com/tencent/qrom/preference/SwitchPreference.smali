.class public Lcom/tencent/qrom/preference/SwitchPreference;
.super Lcom/tencent/qrom/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/SwitchPreference$1;,
        Lcom/tencent/qrom/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mListener:Lcom/tencent/qrom/preference/SwitchPreference$Listener;

.field private mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;

.field private mSwitchTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v1, Lcom/tencent/qrom/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/qrom/preference/SwitchPreference$Listener;-><init>(Lcom/tencent/qrom/preference/SwitchPreference;Lcom/tencent/qrom/preference/SwitchPreference$1;)V

    iput-object v1, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mListener:Lcom/tencent/qrom/preference/SwitchPreference$Listener;

    .line 112
    sget-object v1, Landroid/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/preference/SwitchPreference;)Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/preference/SwitchPreference;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/preference/SwitchPreference;Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;)Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/preference/SwitchPreference;
    .param p1, "x1"    # Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mOnClickListener:Lcom/tencent/qrom/preference/Preference$OnPreferenceClickListener;

    return-object p1
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 148
    const v2, 0x7a0900eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 150
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/SwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 153
    instance-of v2, v0, Lcom/tencent/qrom/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 154
    check-cast v1, Lcom/tencent/qrom/widget/Switch;

    .line 155
    .local v1, "switchView":Lcom/tencent/qrom/widget/Switch;
    iget-object v2, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v2, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    .end local v1    # "switchView":Lcom/tencent/qrom/widget/Switch;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 167
    return-void

    .line 161
    .restart local v1    # "switchView":Lcom/tencent/qrom/widget/Switch;
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mListener:Lcom/tencent/qrom/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 62
    invoke-super {p0}, Lcom/tencent/qrom/preference/TwoStatePreference;->onClick()V

    .line 66
    :cond_0
    return-void
.end method

.method public setOnPreferenceSwitchClickListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 57
    return-void
.end method

.method public setSwitchTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchTag:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 188
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/SwitchPreference;->notifyChanged()V

    .line 189
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tencent/qrom/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/SwitchPreference;->notifyChanged()V

    .line 178
    return-void
.end method
