.class public abstract Lcom/tencent/qrom/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Lcom/tencent/qrom/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 113
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/PreferenceFragment$1;-><init>(Lcom/tencent/qrom/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/PreferenceFragment$2;-><init>(Lcom/tencent/qrom/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/PreferenceFragment$3;-><init>(Lcom/tencent/qrom/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/preference/PreferenceFragment;)Lcom/tencent/qrom/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/preference/PreferenceFragment;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 355
    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    if-eqz v2, :cond_0

    .line 376
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 359
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 360
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Lcom/tencent/qrom/widget/ListView;

    if-nez v2, :cond_2

    .line 364
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_2
    check-cast v0, Lcom/tencent/qrom/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    .line 369
    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    if-nez v2, :cond_3

    .line 370
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    iget-object v3, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 375
    iget-object v2, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 271
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/tencent/qrom/preference/PreferenceScreen;)Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/PreferenceFragment;->setPreferenceScreen(Lcom/tencent/qrom/preference/PreferenceScreen;)V

    .line 272
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 282
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/qrom/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/tencent/qrom/preference/PreferenceScreen;)Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/PreferenceFragment;->setPreferenceScreen(Lcom/tencent/qrom/preference/PreferenceScreen;)V

    .line 284
    return-void
.end method

.method public bindPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/tencent/qrom/widget/ListView;->setHeaderBlankWithStatusbar(Z)Z

    .line 326
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/tencent/qrom/widget/ListView;->setFooterBlank(Z)Z

    .line 327
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v5

    .line 328
    .local v5, "preferenceScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v0

    .line 330
    .local v0, "mListView":Lcom/tencent/qrom/widget/ListView;
    invoke-virtual {v5}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .line 331
    .local v6, "size":I
    if-gtz v6, :cond_1

    .line 346
    .end local v0    # "mListView":Lcom/tencent/qrom/widget/ListView;
    .end local v6    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 334
    .restart local v0    # "mListView":Lcom/tencent/qrom/widget/ListView;
    .restart local v6    # "size":I
    :cond_1
    invoke-virtual {v5, v9}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v4

    .line 336
    .local v4, "mPreference":Lcom/tencent/qrom/preference/Preference;
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7a0d003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 337
    .local v2, "mPadding":I
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7a0d0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 338
    .local v1, "mMargin":I
    instance-of v7, v4, Lcom/tencent/qrom/preference/PreferenceCategory;

    if-eqz v7, :cond_2

    .line 339
    invoke-virtual {v0, v1, v9, v1, v9}, Lcom/tencent/qrom/widget/ListView;->setPadding(IIII)V

    .line 344
    :goto_1
    invoke-virtual {v5, v0}, Lcom/tencent/qrom/preference/PreferenceScreen;->bind(Lcom/tencent/qrom/widget/ListView;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7a0d0016    # 1.830289E35f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 342
    .local v3, "mPaddingTop":I
    invoke-virtual {v0, v1, v9, v1, v9}, Lcom/tencent/qrom/widget/ListView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/tencent/qrom/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/tencent/qrom/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->ensureList()V

    .line 351
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    iget-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->bindPreferences()V

    .line 172
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mInitDone:Z

    .line 174
    if-eqz p1, :cond_1

    .line 175
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 176
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v1

    .line 178
    .local v1, "preferenceScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 183
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    .line 150
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/preference/PreferenceManager;->setFragment(Lcom/tencent/qrom/preference/PreferenceFragment;)V

    .line 151
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const v0, 0x7a03004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 210
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mList:Lcom/tencent/qrom/widget/ListView;

    .line 201
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 204
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/tencent/qrom/preference/PreferenceScreen;Lcom/tencent/qrom/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/tencent/qrom/preference/PreferenceScreen;
    .param p2, "preference"    # Lcom/tencent/qrom/preference/Preference;

    .prologue
    .line 291
    invoke-virtual {p2}, Lcom/tencent/qrom/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/qrom/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/tencent/qrom/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/tencent/qrom/preference/PreferenceFragment;Lcom/tencent/qrom/preference/Preference;)Z

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->getPreferenceScreen()Lcom/tencent/qrom/preference/PreferenceScreen;

    move-result-object v1

    .line 217
    .local v1, "preferenceScreen":Lcom/tencent/qrom/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 220
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 188
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 189
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 194
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceManager;->dispatchActivityStop()V

    .line 195
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/tencent/qrom/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 196
    return-void
.end method

.method public setPreferenceScreen(Lcom/tencent/qrom/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/tencent/qrom/preference/PreferenceScreen;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mPreferenceManager:Lcom/tencent/qrom/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/preference/PreferenceManager;->setPreferences(Lcom/tencent/qrom/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mHavePrefs:Z

    .line 247
    iget-boolean v0, p0, Lcom/tencent/qrom/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/tencent/qrom/preference/PreferenceFragment;->postBindPreferences()V

    .line 251
    :cond_0
    return-void
.end method
