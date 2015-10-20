.class public Landroid/app/QromDownloadManager;
.super Landroid/app/DownloadManager;
.source "QromDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QromDownloadManager$CursorTranslator;,
        Landroid/app/QromDownloadManager$Query;,
        Landroid/app/QromDownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_DELETED:Ljava/lang/String; = "com.tencent.intent.action.DOWNLOAD_DELETED"

.field public static final ACTION_DOWNLOAD_PAUSED:Ljava/lang/String; = "com.tencent.intent.action.DOWNLOAD_PAUSED"

.field public static final ACTION_DOWNLOAD_RESUMED:Ljava/lang/String; = "com.tencent.intent.action.DOWNLOAD_RESUMED"

.field public static final ACTION_DOWNLOAD_UPDATED:Ljava/lang/String; = "com.tencent.intent.action.DOWNLOAD_UPDATED"

.field public static final AUTHORITY:Ljava/lang/String; = "downloads"

.field public static final COLUMN_DELETE_FILE_WHEN_DELETE_TASK:Ljava/lang/String; = "delelte_file"

.field public static final COLUMN_DOWNLOADING_SPEED:Ljava/lang/String; = "downloading_speed"

.field public static final COLUMN_NEED_BROADCAST:Ljava/lang/String; = "need_broadcast"

.field public static final COLUMN_SORT_DOWNLOAD_STATUS:Ljava/lang/String; = "sort_status"

.field public static final COLUMN_TASK_CREATE_TIME:Ljava/lang/String; = "task_create_time"

.field public static final COLUMN_TASK_ICON:Ljava/lang/String; = "task_icon_url"

.field public static final COLUMN_UNVISIBLE_WHEN_COMPLETE:Ljava/lang/String; = "unvisible_when_complete"

.field public static final CUSTOMIZED_DOWNLOAD_ACTIVITY:Landroid/content/ComponentName;

.field public static final CUSTOMIZED_TITLE_EXTRA:Ljava/lang/String; = "customer_title_extra"

.field public static final EXTRA_DOWNLOAD_RECEIVED_SIZE:Ljava/lang/String; = "extra_download_received_size"

.field public static final EXTRA_DOWNLOAD_SPEED:Ljava/lang/String; = "extra_download_speed"

.field public static final EXTRA_DOWNLOAD_TOTAL_SIZE:Ljava/lang/String; = "extra_download_total_size"

.field public static final QROM_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field private static sInstance:Landroid/app/QromDownloadManager;


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.qrom.download"

    const-string v2, "com.tencent.qrom.download.DownloadCustomerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/QromDownloadManager;->CUSTOMIZED_DOWNLOAD_ACTIVITY:Landroid/content/ComponentName;

    .line 120
    sget-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "notificationpackage"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "task_icon_url"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "task_create_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "downloading_speed"

    aput-object v3, v1, v2

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/QromDownloadManager;->concatenateArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/QromDownloadManager;->QROM_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QromDownloadManager;->sInstance:Landroid/app/QromDownloadManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 125
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 130
    iput-object p1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 131
    return-void
.end method

.method private static concatenateArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "arrayA":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayB":[Ljava/lang/Object;, "[TT;"
    .local p2, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 144
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 145
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "arrayOfObject":[Ljava/lang/Object;
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/app/QromDownloadManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const-class v1, Landroid/app/QromDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/QromDownloadManager;->sInstance:Landroid/app/QromDownloadManager;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/app/QromDownloadManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/app/QromDownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    sput-object v0, Landroid/app/QromDownloadManager;->sInstance:Landroid/app/QromDownloadManager;

    .line 138
    :cond_0
    sget-object v0, Landroid/app/QromDownloadManager;->sInstance:Landroid/app/QromDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getWhereArgsForStatus([I)[Ljava/lang/String;
    .locals 3
    .param p0, "status"    # [I

    .prologue
    .line 376
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 377
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 378
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-object v1
.end method

.method private static getWhereCluaseForStatus([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "operators"    # [Ljava/lang/String;
    .param p1, "joiner"    # [Ljava/lang/String;

    .prologue
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 365
    if-lez v0, :cond_0

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setRecommendedMaxBytesOverMobile(Landroid/content/Context;J)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxBytes"    # J

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs pauseDownload([J)I
    .locals 10
    .param p1, "ids"    # [J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v3, "control"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v3, "downloading_speed"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    array-length v3, p1

    if-ne v3, v7, :cond_0

    .line 182
    iget-object v3, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v5, p1, v8

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "="

    aput-object v6, v5, v8

    const-string v6, "="

    aput-object v6, v5, v7

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "OR"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Landroid/app/QromDownloadManager;->getWhereCluaseForStatus([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/app/QromDownloadManager;->getWhereArgsForStatus([I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 190
    :goto_0
    return v3

    .line 187
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "="

    aput-object v5, v4, v8

    const-string v5, "="

    aput-object v5, v4, v7

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "OR"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Landroid/app/QromDownloadManager;->getWhereCluaseForStatus([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "where":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/app/QromDownloadManager;->getWhereArgsForStatus([I)[Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/app/QromDownloadManager;->concatenateArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 190
    .local v2, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 182
    :array_0
    .array-data 4
        0xbe
        0xc0
    .end array-data

    .line 188
    :array_1
    .array-data 4
        0xbe
        0xc0
    .end array-data
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    .prologue
    .line 162
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/QromDownloadManager;->QROM_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/QromDownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/QromDownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs remove(Z[J)I
    .locals 6
    .param p1, "deleteFile"    # Z
    .param p2, "ids"    # [J

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 228
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "delelte_file"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    array-length v1, p2

    if-ne v1, v3, :cond_2

    .line 238
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p2, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 241
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public varargs resumeDownload([J)I
    .locals 12
    .param p1, "ids"    # [J

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v3, "control"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v3, "bypass_recommended_size_limit"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    array-length v3, p1

    if-ne v3, v9, :cond_0

    .line 208
    iget-object v3, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v5, p1, v8

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "="

    aput-object v6, v5, v8

    const-string v6, "="

    aput-object v6, v5, v9

    const-string v6, "="

    aput-object v6, v5, v10

    const-string v6, "="

    aput-object v6, v5, v7

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "OR"

    aput-object v7, v6, v8

    const-string v7, "OR"

    aput-object v7, v6, v9

    const-string v7, "OR"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Landroid/app/QromDownloadManager;->getWhereCluaseForStatus([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/app/QromDownloadManager;->getWhereArgsForStatus([I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 218
    :goto_0
    return v3

    .line 214
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "="

    aput-object v5, v4, v8

    const-string v5, "="

    aput-object v5, v4, v9

    const-string v5, "="

    aput-object v5, v4, v10

    const-string v5, "="

    aput-object v5, v4, v7

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "OR"

    aput-object v6, v5, v8

    const-string v6, "OR"

    aput-object v6, v5, v9

    const-string v6, "OR"

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Landroid/app/QromDownloadManager;->getWhereCluaseForStatus([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "where":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [I

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/app/QromDownloadManager;->getWhereArgsForStatus([I)[Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/app/QromDownloadManager;->concatenateArray([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 218
    .local v2, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 208
    :array_0
    .array-data 4
        0xc1
        0xc2
        0xc3
        0xc4
    .end array-data

    .line 215
    :array_1
    .array-data 4
        0xc1
        0xc2
        0xc3
        0xc4
    .end array-data
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public varargs setAllowedNetworkTypes(I[J)I
    .locals 6
    .param p1, "flags"    # I
    .param p2, "ids"    # [J

    .prologue
    const/4 v5, 0x0

    .line 314
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "allowed_network_types"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 323
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p2, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 326
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public varargs setBypassRecommenderSizeLimit([J)I
    .locals 6
    .param p1, "ids"    # [J

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 346
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "bypass_recommended_size_limit"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 353
    array-length v1, p1

    if-ne v1, v3, :cond_2

    .line 354
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 357
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public updateNeedBroadcastArray([J[J)V
    .locals 10
    .param p1, "registerIds"    # [J
    .param p2, "unRegisterIds"    # [J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 253
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    array-length v5, p2

    if-nez v5, :cond_2

    .line 256
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "input param \'ids\' can\'t be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .local v3, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 261
    .local v1, "register":Landroid/content/ContentProviderOperation$Builder;
    const/4 v2, 0x0

    .line 262
    .local v2, "unrester":Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 264
    const-string v5, "need_broadcast"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    array-length v5, p1

    if-ne v5, v9, :cond_7

    .line 266
    iget-object v5, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v6, p1, v8

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 276
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    array-length v5, p2

    if-lez v5, :cond_4

    .line 277
    const-string v5, "need_broadcast"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    array-length v5, p2

    if-ne v5, v9, :cond_8

    .line 279
    iget-object v5, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v6, p2, v8

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 289
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 290
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_5
    if-eqz v2, :cond_6

    .line 293
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_6
    :try_start_0
    iget-object v5, p0, Landroid/app/QromDownloadManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "downloads"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    :goto_2
    return-void

    .line 270
    :cond_7
    iget-object v5, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 272
    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 282
    :cond_8
    iget-object v5, p0, Landroid/app/QromDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 283
    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 284
    invoke-static {p2}, Landroid/app/QromDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Landroid/app/QromDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method
