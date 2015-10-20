.class final Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    }
.end annotation


# instance fields
.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field externalProcessNoHandleCount:I

.field externalProcessTokenToHandle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final info:Landroid/content/pm/ProviderInfo;

.field launchingApp:Lcom/android/server/am/ProcessRecord;

.field final name:Landroid/content/ComponentName;

.field public noReleaseNeeded:Z

.field proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field shortStringName:Ljava/lang/String;

.field final singleton:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "_name"    # Landroid/content/ComponentName;
    .param p5, "_singleton"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 61
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 62
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 63
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 65
    iput-boolean p5, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 66
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 67
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .locals 1
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 72
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 73
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 75
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 76
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ContentProviderRecord;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method private removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 132
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->unlinkFromOwnDeathLocked()V

    .line 133
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public addExternalProcessHandleLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 100
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-nez v0, :cond_2

    .line 101
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .end local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V

    .line 102
    .restart local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    # operator++ for: Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->access$008(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    goto :goto_0
.end method

.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z

    .prologue
    .line 144
    if-eqz p3, :cond_0

    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "package="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    const-string v2, " process="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "proc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchingApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 153
    :cond_1
    if-eqz p3, :cond_2

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 155
    const-string v2, " provider="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 157
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "singleton="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "authority="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    if-eqz p3, :cond_5

    .line 162
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-eqz v2, :cond_5

    .line 163
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isSyncable="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 164
    const-string v2, " multiprocess="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 165
    const-string v2, " initOrder="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    :cond_5
    if-eqz p3, :cond_9

    .line 169
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "externals="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 180
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 181
    if-eqz p3, :cond_7

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 185
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 186
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eq v2, p0, :cond_8

    .line 188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    *** WRONG PROVIDER: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 184
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v2, :cond_6

    .line 175
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 176
    const-string v2, " connections, "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 177
    const-string v2, " external handles"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_b
    return-void
.end method

.method public hasExternalProcessHandles()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newHolder(Lcom/android/server/am/ContentProviderConnection;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 2
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;

    .prologue
    .line 80
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 81
    .local v0, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    iput-object v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 82
    iget-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 83
    iput-object p1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 84
    return-object v0
.end method

.method public removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "hasHandle":Z
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 113
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x1

    .line 115
    # operator-- for: Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->access$010(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    .line 116
    # getter for: Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->access$000(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    .line 127
    .end local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    .end local v1    # "hasHandle":Z
    :goto_0
    return v2

    .line 122
    .restart local v1    # "hasHandle":Z
    :cond_0
    if-nez v1, :cond_1

    .line 123
    iget v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    goto :goto_0

    .line 127
    .end local v1    # "hasHandle":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    .line 219
    :goto_0
    return-object v1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    .line 208
    :goto_0
    return-object v1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ContentProviderRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
