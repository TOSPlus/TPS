.class Lcom/tencent/qrom/provider/QromSettings$NameValueCache;
.super Ljava/lang/Object;
.source "QromSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "versionSystemProperty"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callCommand"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValuesVersion:J

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 102
    iput-object p1, p0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 104
    iput-object p3, p0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 110
    .local v13, "newValuesVersion":J
    monitor-enter p0

    .line 111
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValuesVersion:J

    cmp-long v2, v2, v13

    if-eqz v2, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 118
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValuesVersion:J

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    move-object v15, v2

    .line 178
    :cond_1
    :goto_0
    return-object v15

    .line 124
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 129
    if-nez v1, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .local v11, "cp":Landroid/content/IContentProvider;
    move-object v1, v11

    .line 132
    .end local v11    # "cp":Landroid/content/IContentProvider;
    .restart local v1    # "cp":Landroid/content/IContentProvider;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 140
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v1, v2, v3, v0, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 141
    .local v9, "b":Landroid/os/Bundle;
    if-eqz v9, :cond_4

    .line 142
    invoke-virtual {v9}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v15

    .line 143
    .local v15, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    .end local v9    # "b":Landroid/os/Bundle;
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 156
    :cond_4
    const/4 v10, 0x0

    .line 158
    .local v10, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string v5, "name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 160
    if-nez v10, :cond_5

    .line 161
    const-string v2, "QromSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 162
    const/4 v15, 0x0

    .line 178
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 124
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 132
    .restart local v1    # "cp":Landroid/content/IContentProvider;
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 165
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_5
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 166
    .restart local v15    # "value":Ljava/lang/String;
    :goto_1
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 167
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 178
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 165
    .end local v15    # "value":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x0

    goto :goto_1

    .line 168
    .restart local v15    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 174
    .end local v15    # "value":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 175
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "QromSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/provider/QromSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 176
    const/4 v15, 0x0

    .line 178
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v12    # "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method
