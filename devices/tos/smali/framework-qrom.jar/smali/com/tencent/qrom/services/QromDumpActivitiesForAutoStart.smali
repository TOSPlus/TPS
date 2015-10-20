.class public Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;
.super Ljava/lang/Object;
.source "QromDumpActivitiesForAutoStart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.tencent.qrom.permission"

.field public static final AUTO_CONTENT_URI:Landroid/net/Uri;

.field public static final AUTO_TABLE_NAME:Ljava/lang/String; = "autotable"

.field private static final CHANGE_AUTO_START:I = 0x2

.field private static final CHANGE_AUTO_TIME:I = 0x4e20

.field private static final READ_AUTO_START_FIRSTLY:I = 0x1

.field private static final READ_AUTO_TIME:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "QromDumpActivitiesForAutoStart"

.field private static instance:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private bWaitUpdate:Z

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListObserver:Landroid/database/ContentObserver;

.field private mHandler:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "content://com.tencent.qrom.permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "autotable"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->AUTO_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackList:Ljava/util/ArrayList;

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->bWaitUpdate:Z

    .line 131
    new-instance v1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;-><init>(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackListObserver:Landroid/database/ContentObserver;

    .line 48
    sput-object p1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QromAutoStartChangedHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;-><init>(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mHandler:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->readAutoStartDb()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackListObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->bWaitUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->bWaitUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mHandler:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;

    return-object v0
.end method

.method private getDisableList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->instance:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->instance:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    .line 58
    :cond_0
    sget-object v0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->instance:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    return-object v0
.end method

.method private readAutoStartDb()V
    .locals 13

    .prologue
    .line 93
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v9, "mBlackListQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 95
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 97
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 99
    .local v10, "mResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->AUTO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    sget-object v1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->AUTO_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 103
    :cond_0
    if-nez v6, :cond_3

    .line 120
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 123
    :cond_1
    if-eqz v6, :cond_2

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    .end local v10    # "mResolver":Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-void

    .line 104
    .restart local v10    # "mResolver":Landroid/content/ContentResolver;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 105
    :cond_4
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "disable":Z
    const-string v1, "_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "pkgname":Ljava/lang/String;
    const-string v1, "_state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 109
    .local v12, "state":I
    const/4 v1, 0x2

    if-ne v12, v1, :cond_7

    const/4 v7, 0x1

    .line 110
    :goto_2
    if-eqz v7, :cond_4

    .line 111
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    .end local v7    # "disable":Z
    .end local v10    # "mResolver":Landroid/content/ContentResolver;
    .end local v11    # "pkgname":Ljava/lang/String;
    .end local v12    # "state":I
    :catch_0
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 123
    :cond_5
    if-eqz v6, :cond_6

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    iput-object v9, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackList:Ljava/util/ArrayList;

    .line 128
    const-string v1, "QromDumpActivitiesForAutoStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " readAutoStartDb: end...., mBlackList contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .restart local v7    # "disable":Z
    .restart local v10    # "mResolver":Landroid/content/ContentResolver;
    .restart local v11    # "pkgname":Ljava/lang/String;
    .restart local v12    # "state":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 120
    .end local v7    # "disable":Z
    .end local v11    # "pkgname":Ljava/lang/String;
    .end local v12    # "state":I
    :cond_8
    if-eqz v0, :cond_9

    .line 121
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 123
    :cond_9
    if-eqz v6, :cond_6

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 117
    .end local v10    # "mResolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v8

    .line 118
    .local v8, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    if-eqz v0, :cond_a

    .line 121
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 123
    :cond_a
    if-eqz v6, :cond_6

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 120
    .end local v8    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_b

    .line 121
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 123
    :cond_b
    if-eqz v6, :cond_c

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v1
.end method


# virtual methods
.method public canAtuoStart(Landroid/content/Intent;ZLjava/util/ArrayList;)Z
    .locals 16
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "systemready"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, "arList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 149
    const/4 v12, 0x1

    .line 192
    :goto_0
    return v12

    .line 151
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_1

    if-nez p1, :cond_2

    .line 152
    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 155
    .local v4, "callingUid":I
    const/16 v12, 0x2710

    if-ge v4, v12, :cond_3

    .line 156
    const/4 v12, 0x1

    goto :goto_0

    .line 158
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->getDisableList()Ljava/util/ArrayList;

    move-result-object v3

    .line 159
    .local v3, "blackNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_5

    .line 160
    :cond_4
    const/4 v12, 0x1

    goto :goto_0

    .line 162
    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    if-nez v12, :cond_6

    .line 163
    const/4 v12, 0x1

    goto :goto_0

    .line 165
    :cond_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13, v14, v15}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 166
    .local v1, "allServiceResolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_7

    .line 167
    const/4 v12, 0x1

    goto :goto_0

    .line 169
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_8

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 173
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "blackName":Ljava/lang/String;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 175
    const/4 v9, 0x0

    .line 176
    .local v9, "isExistInStack":Z
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 177
    .local v10, "pkgname":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 178
    const/4 v9, 0x1

    goto :goto_1

    .line 181
    .end local v10    # "pkgname":Ljava/lang/String;
    :cond_b
    if-nez v9, :cond_9

    .line 182
    const-string v12, "QromDumpActivitiesForAutoStart"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "canAtuoStart: do not startService "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 188
    .end local v1    # "allServiceResolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "blackName":Ljava/lang/String;
    .end local v3    # "blackNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "callingUid":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isExistInStack":Z
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    .line 189
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 192
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public readAutoStartDbFirstly()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mHandler:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    return-void
.end method
