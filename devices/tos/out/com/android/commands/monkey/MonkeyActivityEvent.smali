.class public Lcom/android/commands/monkey/MonkeyActivityEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyActivityEvent.java"


# instance fields
.field mAlarmTime:J

.field private mApp:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    .line 34
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 35
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;J)V
    .registers 6
    .param p1, "app"    # Landroid/content/ComponentName;
    .param p2, "arg"    # J

    .prologue
    .line 39
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 40
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    .line 41
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    .line 42
    return-void
.end method

.method private getEvent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    return-object v0
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 18
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyActivityEvent;->getEvent()Landroid/content/Intent;

    move-result-object v3

    .line 58
    .local v3, "intent":Landroid/content/Intent;
    if-lez p3, :cond_23

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":Switch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    :cond_23
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3a

    .line 63
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v12, "args":Landroid/os/Bundle;
    const-string v0, "alarmTime"

    iget-wide v1, p0, Lcom/android/commands/monkey/MonkeyActivityEvent;->mAlarmTime:J

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    invoke-virtual {v3, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_3a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    :try_start_46
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_49} :catch_55

    .line 81
    const/4 v0, 0x1

    :goto_4a
    return v0

    .line 71
    :catch_4b
    move-exception v13

    .line 72
    .local v13, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "** Failed talking with activity manager!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    const/4 v0, -0x1

    goto :goto_4a

    .line 74
    .end local v13    # "e":Landroid/os/RemoteException;
    :catch_55
    move-exception v13

    .line 75
    .local v13, "e":Ljava/lang/SecurityException;
    if-lez p3, :cond_75

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Permissions error starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :cond_75
    const/4 v0, -0x2

    goto :goto_4a
.end method
