.class public final Lcom/android/commands/settings/SettingsCmd;
.super Ljava/lang/Object;
.source "SettingsCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/settings/SettingsCmd$1;,
        Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "settings"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mKey:Ljava/lang/String;

.field mNextArg:I

.field mTable:Ljava/lang/String;

.field mUser:I

.field mValue:Ljava/lang/String;

.field mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    .line 42
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    .line 43
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p0, :cond_6

    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    .line 49
    :cond_6
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    .line 59
    :goto_9
    return-void

    .line 53
    :cond_a
    sput-object p0, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    .line 55
    :try_start_c
    new-instance v1, Lcom/android/commands/settings/SettingsCmd;

    invoke-direct {v1}, Lcom/android/commands/settings/SettingsCmd;-><init>()V

    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd;->run()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_9

    .line 56
    :catch_15
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unable to run settings command"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 161
    const/4 v0, 0x0

    .line 165
    :goto_8
    return-object v0

    .line 163
    :cond_9
    sget-object v1, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    aget-object v0, v1, v2

    .line 164
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    goto :goto_8
.end method

.method private static printUsage()V
    .registers 2

    .prologue
    .line 215
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage:  settings [--user NUM] get namespace key"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "        settings [--user NUM] put namespace key value"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\n\'namespace\' is one of {system, secure, global}, case-insensitive"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If \'--user NUM\' is not given, the operations are performed on the owner user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    return-void
.end method


# virtual methods
.method getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v5, "system"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v2, "GET_system"

    .line 179
    .local v2, "callGetCommand":Ljava/lang/String;
    :goto_a
    const/4 v4, 0x0

    .line 181
    .local v4, "result":Ljava/lang/String;
    :try_start_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "arg":Landroid/os/Bundle;
    const-string v5, "_user"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const/4 v5, 0x0

    invoke-interface {p1, v5, v2, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_20

    .line 185
    invoke-virtual {v1}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_57

    move-result-object v4

    .line 190
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_20
    :goto_20
    return-object v4

    .line 172
    .end local v2    # "callGetCommand":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_21
    const-string v5, "secure"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v2, "GET_secure"

    .restart local v2    # "callGetCommand":Ljava/lang/String;
    goto :goto_a

    .line 173
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_2c
    const-string v5, "global"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const-string v2, "GET_global"

    .restart local v2    # "callGetCommand":Ljava/lang/String;
    goto :goto_a

    .line 175
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_37
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Invalid table; no put performed"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    .restart local v2    # "callGetCommand":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_57
    move-exception v3

    .line 188
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20
.end method

.method putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v3, "system"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v1, "PUT_system"

    .line 205
    .local v1, "callPutCommand":Ljava/lang/String;
    :goto_a
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "arg":Landroid/os/Bundle;
    const-string v3, "value"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "_user"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_3c

    .line 212
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :goto_1d
    return-void

    .line 197
    :cond_1e
    const-string v3, "secure"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v1, "PUT_secure"

    .restart local v1    # "callPutCommand":Ljava/lang/String;
    goto :goto_a

    .line 198
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_29
    const-string v3, "global"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v1, "PUT_global"

    .restart local v1    # "callPutCommand":Ljava/lang/String;
    goto :goto_a

    .line 200
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_34
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Invalid table; no put performed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 209
    .restart local v1    # "callPutCommand":Ljava/lang/String;
    :catch_3c
    move-exception v2

    .line 210
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 62
    const/4 v11, 0x0

    .line 65
    .local v11, "valid":Z
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    move-result-object v7

    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_15

    .line 66
    const-string v0, "--user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 67
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_58

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4d

    .line 115
    .end local v7    # "arg":Ljava/lang/String;
    :cond_15
    :goto_15
    if-eqz v11, :cond_14c

    .line 116
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    if-gez v0, :cond_1d

    .line 117
    iput v4, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    .line 121
    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 122
    .local v6, "activityManager":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 123
    .local v1, "provider":Landroid/content/IContentProvider;
    new-instance v10, Landroid/os/Binder;

    invoke-direct {v10}, Landroid/os/Binder;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_41

    .line 125
    .local v10, "token":Landroid/os/IBinder;
    :try_start_27
    const-string v0, "settings"

    const/4 v2, 0x0

    invoke-interface {v6, v0, v2, v10}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v9

    .line 127
    .local v9, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v9, :cond_110

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find settings provider"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_38

    .line 145
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_38
    move-exception v0

    if-eqz v1, :cond_40

    .line 146
    :try_start_3b
    const-string v2, "settings"

    invoke-interface {v6, v2, v10}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_40
    throw v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_41

    .line 149
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v10    # "token":Landroid/os/IBinder;
    :catch_41
    move-exception v8

    .line 150
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error while accessing settings provider"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4c
    :goto_4c
    return-void

    .line 71
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_4d
    :try_start_4d
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    goto :goto_2

    .line 111
    .end local v7    # "arg":Ljava/lang/String;
    :catch_58
    move-exception v8

    .line 112
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_15

    .line 72
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_5b
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    if-ne v0, v2, :cond_94

    .line 73
    const-string v0, "get"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 74
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    goto :goto_2

    .line 75
    :cond_6e
    const-string v0, "put"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 76
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    goto :goto_2

    .line 79
    :cond_7b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 82
    :cond_94
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    if-nez v0, :cond_d8

    .line 83
    const-string v0, "system"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "secure"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "global"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid namespace \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 89
    :cond_d0
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    goto/16 :goto_2

    .line 90
    :cond_d8
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    if-ne v0, v2, :cond_f3

    .line 91
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_ea

    .line 93
    const/4 v11, 0x1

    goto/16 :goto_15

    .line 95
    :cond_ea
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Too many arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 98
    :cond_f3
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    if-nez v0, :cond_fb

    .line 99
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 102
    :cond_fb
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    .line 103
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_107

    .line 104
    const/4 v11, 0x1

    goto/16 :goto_15

    .line 106
    :cond_107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Too many arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_10e} :catch_58

    goto/16 :goto_15

    .line 130
    .end local v7    # "arg":Ljava/lang/String;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local v6    # "activityManager":Landroid/app/IActivityManager;
    .restart local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v10    # "token":Landroid/os/IBinder;
    :cond_110
    :try_start_110
    iget-object v1, v9, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 132
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$1;->$SwitchMap$com$android$commands$settings$SettingsCmd$CommandVerb:[I

    iget-object v2, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_152

    .line 140
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unspecified command"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_110 .. :try_end_126} :catchall_38

    .line 145
    :goto_126
    if-eqz v1, :cond_4c

    .line 146
    :try_start_128
    const-string v0, "settings"

    invoke-interface {v6, v0, v10}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12d} :catch_41

    goto/16 :goto_4c

    .line 134
    :pswitch_12f
    :try_start_12f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/commands/settings/SettingsCmd;->getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_126

    .line 137
    :pswitch_13f
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/settings/SettingsCmd;->putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_12f .. :try_end_14b} :catchall_38

    goto :goto_126

    .line 155
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v10    # "token":Landroid/os/IBinder;
    :cond_14c
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    goto/16 :goto_4c

    .line 132
    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_13f
    .end packed-switch
.end method
