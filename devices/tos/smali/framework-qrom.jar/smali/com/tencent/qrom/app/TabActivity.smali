.class public Lcom/tencent/qrom/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Landroid/widget/QromTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTabIndex:I

    .line 63
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    if-nez v0, :cond_0

    .line 143
    const v0, 0x7a030077

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/TabActivity;->setContentView(I)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Landroid/widget/QromTabHost;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/tencent/qrom/app/TabActivity;->ensureTabHost()V

    .line 166
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/QromTabWidget;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {v0}, Landroid/widget/QromTabHost;->getTabWidget()Landroid/widget/QromTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/tencent/qrom/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {v1}, Landroid/widget/QromTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "tabView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 131
    const v0, 0x7a0900ff

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/TabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QromTabHost;

    iput-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    .line 133
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/app/TabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/QromTabHost;->setup(Landroid/app/LocalActivityManager;Landroid/app/FragmentManager;)V

    .line 139
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/tencent/qrom/app/TabActivity;->ensureTabHost()V

    .line 108
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {v0}, Landroid/widget/QromTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QromTabHost;->setCurrentTab(I)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/tencent/qrom/app/TabActivity;->ensureTabHost()V

    .line 89
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "cur":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {v1, v0}, Landroid/widget/QromTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {v1}, Landroid/widget/QromTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    iget-object v2, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/QromTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    iget v1, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    iget v2, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/QromTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/tencent/qrom/app/TabActivity;->mTabHost:Landroid/widget/QromTabHost;

    invoke-virtual {v1}, Landroid/widget/QromTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "currentTabTag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 82
    iput p1, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTabIndex:I

    .line 83
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/app/TabActivity;->mDefaultTabIndex:I

    .line 73
    return-void
.end method
