.class public Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyInstrumentationEvent.java"


# instance fields
.field mRunnerName:Ljava/lang/String;

.field mTestCaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "testCaseName"    # Ljava/lang/String;
    .param p2, "runnerName"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 13
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mRunnerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 42
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 43
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad component name"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v4, "args":Landroid/os/Bundle;
    const-string v0, "class"

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;->mTestCaseName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    :try_start_26
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2b

    .line 53
    const/4 v0, 0x1

    :goto_2a
    return v0

    .line 49
    :catch_2b
    move-exception v8

    .line 50
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    const/4 v0, -0x1

    goto :goto_2a
.end method
