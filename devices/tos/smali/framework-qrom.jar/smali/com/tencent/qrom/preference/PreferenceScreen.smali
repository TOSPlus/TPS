.class public final Lcom/tencent/qrom/preference/PreferenceScreen;
.super Lcom/tencent/qrom/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/tencent/qrom/app/QromDialog;

.field private mListView:Lcom/tencent/qrom/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    if-eqz v8, :cond_0

    .line 156
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    :cond_0
    new-instance v8, Lcom/tencent/qrom/widget/ListView;

    invoke-direct {v8, v0}, Lcom/tencent/qrom/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    .line 159
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v8, v11}, Lcom/tencent/qrom/widget/ListView;->setHeaderBlankWithStatusbar(Z)Z

    .line 160
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v8, v10}, Lcom/tencent/qrom/widget/ListView;->setFooterBlank(Z)Z

    .line 161
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7a0d003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    .line 162
    .local v3, "mPadding":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7a0d0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 163
    .local v2, "mMargin":I
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .line 164
    .local v6, "size":I
    if-gtz v6, :cond_1

    .line 199
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0, v10}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreference(I)Lcom/tencent/qrom/preference/Preference;

    move-result-object v5

    .line 169
    .local v5, "mPreference":Lcom/tencent/qrom/preference/Preference;
    instance-of v8, v5, Lcom/tencent/qrom/preference/PreferenceCategory;

    if-eqz v8, :cond_3

    .line 170
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v8, v2, v10, v2, v10}, Lcom/tencent/qrom/widget/ListView;->setPadding(IIII)V

    .line 177
    :goto_1
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v8, v10}, Lcom/tencent/qrom/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 178
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {p0, v8}, Lcom/tencent/qrom/preference/PreferenceScreen;->bind(Lcom/tencent/qrom/widget/ListView;)V

    .line 181
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    .line 182
    .local v7, "title":Ljava/lang/CharSequence;
    new-instance v1, Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v8

    invoke-direct {v1, v0, v8}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 183
    .local v1, "dialog":Lcom/tencent/qrom/app/QromDialog;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 184
    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 188
    :goto_2
    invoke-virtual {v1, v11}, Lcom/tencent/qrom/app/QromDialog;->setShowActionbar(Z)V

    .line 189
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v1, v8}, Lcom/tencent/qrom/app/QromDialog;->setContentView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v1, p0}, Lcom/tencent/qrom/app/QromDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 191
    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {v1, p1}, Lcom/tencent/qrom/app/QromDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/tencent/qrom/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 198
    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->show()V

    goto :goto_0

    .line 172
    .end local v1    # "dialog":Lcom/tencent/qrom/app/QromDialog;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7a0d0016    # 1.830289E35f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 173
    .local v4, "mPaddingTop":I
    iget-object v8, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v8, v2, v10, v2, v10}, Lcom/tencent/qrom/widget/ListView;->setPadding(IIII)V

    goto :goto_1

    .line 186
    .end local v4    # "mPaddingTop":I
    .restart local v1    # "dialog":Lcom/tencent/qrom/app/QromDialog;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v1, v7}, Lcom/tencent/qrom/app/QromDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public bind(Lcom/tencent/qrom/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 137
    invoke-virtual {p1, p0}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/widget/ListView;->setFirstItemHigher(Z)Z

    .line 141
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 142
    return-void
.end method

.method public getDialog()Lcom/tencent/qrom/app/QromDialog;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qrom/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/preference/PreferenceGroupAdapter;-><init>(Lcom/tencent/qrom/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 203
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getPreferenceManager()Lcom/tencent/qrom/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 204
    return-void
.end method

.method public onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Lcom/tencent/qrom/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 217
    instance-of v2, p1, Lcom/tencent/qrom/widget/ListView;

    if-eqz v2, :cond_0

    .line 218
    check-cast p1, Lcom/tencent/qrom/widget/ListView;

    .end local p1    # "parent":Lcom/tencent/qrom/widget/AdapterView;
    invoke-virtual {p1}, Lcom/tencent/qrom/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Lcom/tencent/qrom/preference/Preference;

    if-nez v2, :cond_1

    .line 225
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 223
    check-cast v1, Lcom/tencent/qrom/preference/Preference;

    .line 224
    .local v1, "preference":Lcom/tencent/qrom/preference/Preference;
    invoke-virtual {v1, p0}, Lcom/tencent/qrom/preference/Preference;->performClick(Lcom/tencent/qrom/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qrom/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 254
    check-cast v0, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;

    .line 255
    .local v0, "myState":Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/tencent/qrom/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 256
    iget-boolean v1, v0, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, v0, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 234
    invoke-super {p0}, Lcom/tencent/qrom/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 235
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/tencent/qrom/preference/PreferenceScreen;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 236
    .local v0, "dialog":Lcom/tencent/qrom/app/QromDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 243
    :goto_0
    return-object v1

    .line 240
    :cond_1
    new-instance v1, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 241
    .local v1, "myState":Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 242
    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/qrom/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method
