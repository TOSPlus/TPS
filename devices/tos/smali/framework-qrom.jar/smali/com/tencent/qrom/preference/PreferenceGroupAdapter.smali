.class Lcom/tencent/qrom/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field hasNextPreference:Z

.field isBeginAll:Z

.field isBeginNewGroup:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private volatile mIsSyncing:Z

.field mNextIsCategory:Z

.field mNextIsScreen:Z

.field private mPreferenceGroup:Lcom/tencent/qrom/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

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

.field mPreviousIsCategory:Z

.field mPreviousIsLastIndex:Z

.field mPreviousIsScreen:Z

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/tencent/qrom/preference/PreferenceGroup;

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 80
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 82
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;-><init>(Lcom/tencent/qrom/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginAll:Z

    .line 148
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    .line 150
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 151
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsScreen:Z

    .line 152
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    .line 154
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsScreen:Z

    .line 155
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    .line 156
    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    .line 116
    iput-object p1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/tencent/qrom/preference/PreferenceGroup;

    .line 118
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/tencent/qrom/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/tencent/qrom/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 399
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/tencent/qrom/preference/Preference;Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 400
    .local v1, "pl":Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "insertPos":I
    if-gez v0, :cond_0

    .line 405
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 406
    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 408
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/tencent/qrom/preference/Preference;Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;
    .param p2, "in"    # Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 391
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 392
    .local v0, "pl":Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/Preference;->getLayoutResource()I

    move-result v1

    # setter for: Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 394
    invoke-virtual {p1}, Lcom/tencent/qrom/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    # setter for: Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 395
    return-object v0

    .line 391
    .end local v0    # "pl":Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/tencent/qrom/preference/PreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/tencent/qrom/preference/PreferenceGroup;)V
    .locals 10
    .param p2, "group"    # Lcom/tencent/qrom/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/preference/Preference;",
            ">;",
            "Lcom/tencent/qrom/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/preference/Preference;>;"
    invoke-virtual {p2}, Lcom/tencent/qrom/preference/PreferenceGroup;->sortPreferences()V

    .line 162
    invoke-virtual {p2}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 163
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2c

    .line 164
    invoke-virtual {p2, v1}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v4

    .line 166
    .local v4, "preference":Lcom/tencent/qrom/preference/Preference;
    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_0

    .line 167
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p2, v9}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v3

    .line 168
    .local v3, "mPrevious":Lcom/tencent/qrom/preference/Preference;
    instance-of v9, v3, Lcom/tencent/qrom/preference/PreferenceScreen;

    if-eqz v9, :cond_3

    .line 169
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    .line 170
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsScreen:Z

    .line 180
    .end local v3    # "mPrevious":Lcom/tencent/qrom/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v9, v0, -0x1

    if-ge v1, v9, :cond_7

    .line 181
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p2, v9}, Lcom/tencent/qrom/preference/PreferenceGroup;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v2

    .line 182
    .local v2, "mNext":Lcom/tencent/qrom/preference/Preference;
    instance-of v9, v2, Lcom/tencent/qrom/preference/PreferenceScreen;

    if-eqz v9, :cond_5

    .line 183
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    .line 184
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsScreen:Z

    .line 185
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    .line 201
    .end local v2    # "mNext":Lcom/tencent/qrom/preference/Preference;
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v9, :cond_1

    invoke-virtual {v4}, Lcom/tencent/qrom/preference/Preference;->hasSpecifiedLayout()Z

    move-result v9

    if-nez v9, :cond_1

    .line 204
    invoke-direct {p0, v4}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->addPreferenceClassName(Lcom/tencent/qrom/preference/Preference;)V

    .line 208
    :cond_1
    instance-of v9, v4, Lcom/tencent/qrom/preference/PreferenceScreen;

    if-eqz v9, :cond_18

    move-object v6, v4

    .line 209
    check-cast v6, Lcom/tencent/qrom/preference/PreferenceScreen;

    .line 210
    .local v6, "preferenceAsScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    invoke-virtual {v6}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .line 211
    .local v8, "screenSize":I
    invoke-virtual {v6}, Lcom/tencent/qrom/preference/PreferenceScreen;->isOnSameScreenAsChildren()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 212
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    .line 213
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 214
    invoke-direct {p0, p1, v6}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/tencent/qrom/preference/PreferenceGroup;)V

    .line 369
    .end local v6    # "preferenceAsScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    .end local v8    # "screenSize":I
    :cond_2
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginAll:Z

    .line 370
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    .line 371
    invoke-virtual {v4, p0}, Lcom/tencent/qrom/preference/Preference;->setOnPreferenceChangeInternalListener(Lcom/tencent/qrom/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .restart local v3    # "mPrevious":Lcom/tencent/qrom/preference/Preference;
    :cond_3
    instance-of v9, v3, Lcom/tencent/qrom/preference/PreferenceCategory;

    if-eqz v9, :cond_4

    .line 172
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsScreen:Z

    .line 173
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    goto :goto_1

    .line 175
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsScreen:Z

    .line 176
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    goto :goto_1

    .line 186
    .end local v3    # "mPrevious":Lcom/tencent/qrom/preference/Preference;
    .restart local v2    # "mNext":Lcom/tencent/qrom/preference/Preference;
    :cond_5
    instance-of v9, v2, Lcom/tencent/qrom/preference/PreferenceCategory;

    if-eqz v9, :cond_6

    .line 187
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsScreen:Z

    .line 188
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    .line 189
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    goto :goto_2

    .line 191
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsScreen:Z

    .line 192
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    .line 193
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    goto :goto_2

    .line 196
    .end local v2    # "mNext":Lcom/tencent/qrom/preference/Preference;
    :cond_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsScreen:Z

    .line 197
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    .line 198
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    goto :goto_2

    .line 217
    .restart local v6    # "preferenceAsScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    .restart local v8    # "screenSize":I
    :cond_8
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginAll:Z

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    if-eqz v9, :cond_16

    .line 218
    :cond_9
    const/4 v9, 0x1

    if-eq v0, v9, :cond_a

    add-int/lit8 v9, v0, -0x1

    if-ne v1, v9, :cond_e

    .line 219
    :cond_a
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-eqz v9, :cond_c

    .line 220
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-eqz v9, :cond_b

    .line 221
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto :goto_3

    .line 224
    :cond_b
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 225
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 226
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    goto :goto_3

    .line 229
    :cond_c
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-eqz v9, :cond_d

    .line 230
    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 231
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto :goto_3

    .line 233
    :cond_d
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 234
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 235
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    goto/16 :goto_3

    .line 239
    :cond_e
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    if-eqz v9, :cond_13

    .line 240
    :cond_f
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    if-eqz v9, :cond_10

    .line 241
    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 242
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 245
    :cond_10
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    if-nez v9, :cond_12

    .line 246
    :cond_11
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 247
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 249
    :cond_12
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 250
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 255
    :cond_13
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-nez v9, :cond_14

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    if-nez v9, :cond_15

    .line 256
    :cond_14
    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 257
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 259
    :cond_15
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 260
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 266
    :cond_16
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    if-eqz v9, :cond_17

    .line 267
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 268
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 269
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    goto/16 :goto_3

    .line 271
    :cond_17
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->setIndex(I)V

    .line 272
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 278
    .end local v6    # "preferenceAsScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    .end local v8    # "screenSize":I
    :cond_18
    instance-of v9, v4, Lcom/tencent/qrom/preference/PreferenceCategory;

    if-eqz v9, :cond_19

    move-object v7, v4

    .line 279
    check-cast v7, Lcom/tencent/qrom/preference/PreferenceCategory;

    .line 280
    .local v7, "preferenceCategory":Lcom/tencent/qrom/preference/PreferenceCategory;
    invoke-virtual {v7}, Lcom/tencent/qrom/preference/PreferenceCategory;->isOnSameScreenAsChildren()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 281
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    .line 282
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 283
    invoke-direct {p0, p1, v7}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/tencent/qrom/preference/PreferenceGroup;)V

    goto/16 :goto_3

    .line 289
    .end local v7    # "preferenceCategory":Lcom/tencent/qrom/preference/PreferenceCategory;
    :cond_19
    instance-of v9, v4, Lcom/tencent/qrom/preference/PreferenceGroup;

    if-eqz v9, :cond_1a

    move-object v5, v4

    .line 290
    check-cast v5, Lcom/tencent/qrom/preference/PreferenceGroup;

    .line 291
    .local v5, "preferenceAsGroup":Lcom/tencent/qrom/preference/PreferenceGroup;
    invoke-virtual {v5}, Lcom/tencent/qrom/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 292
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    .line 293
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 294
    invoke-direct {p0, p1, v5}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/tencent/qrom/preference/PreferenceGroup;)V

    goto/16 :goto_3

    .line 305
    .end local v5    # "preferenceAsGroup":Lcom/tencent/qrom/preference/PreferenceGroup;
    :cond_1a
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginAll:Z

    if-nez v9, :cond_1b

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-nez v9, :cond_1b

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    if-eqz v9, :cond_28

    .line 306
    :cond_1b
    const/4 v9, 0x1

    if-eq v0, v9, :cond_1c

    add-int/lit8 v9, v0, -0x1

    if-ne v1, v9, :cond_20

    .line 307
    :cond_1c
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-eqz v9, :cond_1e

    .line 309
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-eqz v9, :cond_1d

    .line 310
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 311
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 313
    :cond_1d
    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 314
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 315
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    goto/16 :goto_3

    .line 319
    :cond_1e
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-eqz v9, :cond_1f

    .line 320
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 321
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 323
    :cond_1f
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 324
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 325
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    goto/16 :goto_3

    .line 329
    :cond_20
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-nez v9, :cond_21

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    if-eqz v9, :cond_25

    .line 330
    :cond_21
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    if-eqz v9, :cond_22

    .line 331
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 332
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 334
    :cond_22
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-nez v9, :cond_23

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    if-nez v9, :cond_24

    .line 335
    :cond_23
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 336
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 338
    :cond_24
    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 339
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 343
    :cond_25
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    if-nez v9, :cond_26

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    if-nez v9, :cond_27

    .line 344
    :cond_26
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 345
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 347
    :cond_27
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 348
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 353
    :cond_28
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    if-eqz v9, :cond_29

    .line 354
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 355
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 356
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    goto/16 :goto_3

    .line 358
    :cond_29
    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    if-nez v9, :cond_2a

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    if-nez v9, :cond_2a

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginAll:Z

    if-nez v9, :cond_2a

    iget-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    if-eqz v9, :cond_2b

    .line 359
    :cond_2a
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 360
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 362
    :cond_2b
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/tencent/qrom/preference/Preference;->setIndex(I)V

    .line 363
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    goto/16 :goto_3

    .line 374
    .end local v4    # "preference":Lcom/tencent/qrom/preference/Preference;
    :cond_2c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginAll:Z

    .line 375
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->isBeginNewGroup:Z

    .line 376
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsLastIndex:Z

    .line 377
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsScreen:Z

    .line 378
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreviousIsCategory:Z

    .line 379
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsScreen:Z

    .line 380
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mNextIsCategory:Z

    .line 381
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->hasNextPreference:Z

    .line 382
    return-void
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 129
    monitor-exit p0

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/preference/Preference;>;"
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/tencent/qrom/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/tencent/qrom/preference/PreferenceGroup;)V

    .line 137
    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 141
    monitor-enter p0

    .line 142
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 133
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/preference/Preference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tencent/qrom/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 415
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/preference/Preference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getItem(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 420
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 421
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getItem(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 467
    iget-boolean v3, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_0

    .line 468
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 472
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getItem(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    .line 474
    .local v0, "preference":Lcom/tencent/qrom/preference/Preference;
    invoke-virtual {v0}, Lcom/tencent/qrom/preference/Preference;->isDrawDivider()Z

    move-result v3

    if-nez v3, :cond_2

    .line 476
    const/4 v1, -0x2

    .line 494
    :cond_1
    :goto_0
    return v1

    .line 479
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qrom/preference/Preference;->hasSpecifiedLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 481
    goto :goto_0

    .line 484
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/tencent/qrom/preference/Preference;Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 486
    iget-object v3, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 487
    .local v1, "viewType":I
    if-gez v1, :cond_1

    move v1, v2

    .line 491
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getItem(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    .line 427
    .local v0, "preference":Lcom/tencent/qrom/preference/Preference;
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/tencent/qrom/preference/Preference;Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 431
    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/tencent/qrom/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 432
    const/4 p2, 0x0

    .line 435
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/tencent/qrom/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 500
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 501
    iput-boolean v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 440
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->getItem(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/Preference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/tencent/qrom/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 453
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/tencent/qrom/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    return-void
.end method
