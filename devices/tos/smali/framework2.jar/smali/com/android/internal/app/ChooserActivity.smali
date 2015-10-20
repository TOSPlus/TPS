.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150603"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->tos_org_onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 74
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 75
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 77
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 78
    const-string v1, "com.android.internal.app.ChooserActivity#onCreate"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 79
    return-void
.end method

.method protected tos_org_onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->NEW_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::stafensong::20150603"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 37
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 38
    .local v10, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v10, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target is not an intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 63
    :goto_0
    return-void

    :cond_0
    move-object v2, v10

    .line 43
    check-cast v2, Landroid/content/Intent;

    .line 44
    .local v2, "target":Landroid/content/Intent;
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 45
    .local v3, "title":Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 48
    :cond_1
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 49
    .local v9, "pa":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 50
    .local v4, "initialIntents":[Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 51
    array-length v0, v9

    new-array v4, v0, [Landroid/content/Intent;

    .line 52
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_3

    .line 53
    aget-object v0, v9, v7

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 54
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not an Intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v9, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_0

    .line 59
    :cond_2
    aget-object v0, v9, v7

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v4, v7

    .line 52
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 62
    .end local v7    # "i":I
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_0
.end method
