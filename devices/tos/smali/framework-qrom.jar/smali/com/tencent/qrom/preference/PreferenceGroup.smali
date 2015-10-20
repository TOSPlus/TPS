.class public abstract Lcom/tencent/qrom/preference/PreferenceGroup;
.super Lcom/tencent/qrom/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Lcom/tencent/qrom/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qrom/preference/Preference;",
        "Lcom/tencent/qrom/preference/GenericInflater$Parent",
        "<",
        "Lcom/tencent/qrom/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qrom/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 48
    iput v2, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 50
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 57
    sget-object v1, Lcom/tencent/qrom/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private removePreferenceInt(Lcom/tencent/qrom/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/Preference;->onPrepareForRemoval()V

    .line 182
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/tencent/qrom/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->addPreference(Lcom/tencent/qrom/preference/Preference;)Z

    .line 98
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lcom/tencent/qrom/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->addItemFromInflater(Lcom/tencent/qrom/preference/Preference;)V

    return-void
.end method

.method public addPreference(Lcom/tencent/qrom/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 164
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/Preference;->getOrder()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 132
    iget-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_1

    .line 133
    iget v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Lcom/tencent/qrom/preference/Preference;->setOrder(I)V

    .line 136
    :cond_1
    instance-of v1, p1, Lcom/tencent/qrom/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 139
    check-cast v1, Lcom/tencent/qrom/preference/PreferenceGroup;

    iget-boolean v3, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 144
    .local v0, "insertionIndex":I
    if-gez v0, :cond_3

    .line 145
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 148
    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->onPrepareAddPreference(Lcom/tencent/qrom/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_4
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/qrom/preference/Preference;->onAttachedToHierarchy(Lcom/tencent/qrom/preference/PreferenceManager;)V

    .line 158
    iget-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/Preference;->onAttachedToActivity()V

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->notifyHierarchyChanged()V

    move v1, v2

    .line 164
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 319
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 308
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 309
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/tencent/qrom/preference/Preference;
    .locals 6
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    .end local p0    # "this":Lcom/tencent/qrom/preference/PreferenceGroup;
    :goto_0
    return-object p0

    .line 230
    .restart local p0    # "this":Lcom/tencent/qrom/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 231
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 232
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v2

    .line 233
    .local v2, "preference":Lcom/tencent/qrom/preference/Preference;
    invoke-virtual {v2}, Lcom/tencent/qrom/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 236
    goto :goto_0

    .line 239
    :cond_1
    instance-of v5, v2, Lcom/tencent/qrom/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 240
    check-cast v2, Lcom/tencent/qrom/preference/PreferenceGroup;

    .end local v2    # "preference":Lcom/tencent/qrom/preference/Preference;
    invoke-virtual {v2, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/tencent/qrom/preference/Preference;

    move-result-object v4

    .line 242
    .local v4, "returnedPreference":Lcom/tencent/qrom/preference/Preference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 243
    goto :goto_0

    .line 231
    .end local v4    # "returnedPreference":Lcom/tencent/qrom/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Lcom/tencent/qrom/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 264
    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->onAttachedToActivity()V

    .line 268
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 271
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 272
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/preference/Preference;->onAttachedToActivity()V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/tencent/qrom/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 206
    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/preference/Preference;->setEnabled(Z)V

    .line 210
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/tencent/qrom/preference/Preference;->onPrepareForRemoval()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 283
    return-void
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 192
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 193
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/preference/Preference;

    invoke-direct {p0, v2}, Lcom/tencent/qrom/preference/PreferenceGroup;->removePreferenceInt(Lcom/tencent/qrom/preference/Preference;)Z

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 195
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 197
    return-void

    .line 195
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/preference/Preference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Lcom/tencent/qrom/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->removePreferenceInt(Lcom/tencent/qrom/preference/Preference;)Z

    move-result v0

    .line 175
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 176
    return v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/Preference;->setEnabled(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 291
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/qrom/preference/Preference;->setEnabled(Z)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 81
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 299
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
