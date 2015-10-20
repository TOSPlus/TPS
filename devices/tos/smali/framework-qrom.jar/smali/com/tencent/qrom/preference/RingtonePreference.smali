.class public Lcom/tencent/qrom/preference/RingtonePreference;
.super Lcom/tencent/qrom/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Lcom/tencent/qrom/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    sget-object v1, Landroid/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRingtoneType:I

    .line 60
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowDefault:Z

    .line 62
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowSilent:Z

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 239
    iget v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 241
    if-eqz p3, :cond_0

    .line 242
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 244
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 249
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 252
    :goto_1
    return v1

    .line 244
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 252
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToHierarchy(Lcom/tencent/qrom/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Lcom/tencent/qrom/preference/PreferenceManager;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/Preference;->onAttachedToHierarchy(Lcom/tencent/qrom/preference/PreferenceManager;)V

    .line 233
    invoke-virtual {p1, p0}, Lcom/tencent/qrom/preference/PreferenceManager;->registerOnActivityResultListener(Lcom/tencent/qrom/preference/PreferenceManager$OnActivityResultListener;)V

    .line 234
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRequestCode:I

    .line 235
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/RingtonePreference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getFragment()Lcom/tencent/qrom/preference/PreferenceFragment;

    move-result-object v1

    .line 143
    .local v1, "owningFragment":Lcom/tencent/qrom/preference/PreferenceFragment;
    if-eqz v1, :cond_0

    .line 144
    iget v2, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qrom/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/RingtonePreference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7a04002d

    const v4, 0x7a04002e

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 150
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/RingtonePreference;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 161
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    :cond_0
    const-string v0, "system_settings"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 187
    return-void

    .line 186
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .prologue
    .line 210
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mRingtoneType:I

    .line 93
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowDefault:Z

    .line 113
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/RingtonePreference;->mShowSilent:Z

    .line 132
    return-void
.end method
