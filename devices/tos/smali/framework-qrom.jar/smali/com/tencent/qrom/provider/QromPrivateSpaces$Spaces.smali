.class public final Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;
.super Ljava/lang/Object;
.source "QromPrivateSpaces.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromPrivateSpaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Spaces"
.end annotation


# static fields
.field public static final ACTION_PRIVATE_SPACES_DELETED:Ljava/lang/String; = "android.intent.action.PRIVATE_SPACES_DELETED"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/spaces"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/spaces"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final IS_ACTIVE:Ljava/lang/String; = "is_active"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final PASSWD:Ljava/lang/String; = "passwd"

.field public static final PASSWD_DATA:Ljava/lang/String; = "passwd_data"

.field public static final PASSWD_TYPE:Ljava/lang/String; = "passwd_type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/qrom/provider/QromPrivateSpaces;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "spaces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    sget-object v0, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrivateSpace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->exitCurrentPrivateSpace(Landroid/content/Context;)V

    .line 193
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "passwd"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "email"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "is_active"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 203
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static conformPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v7

    .line 116
    .local v2, "prjection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 124
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v7

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static deletePrivateSpace(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "privateSpace"    # I

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-gtz p1, :cond_0

    const/4 v1, 0x0

    .line 217
    :goto_0
    return v1

    .line 212
    :cond_0
    sget-object v1, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    sget-object v1, Lcom/tencent/qrom/provider/QromPrivateSpaces$Actions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static exitCurrentPrivateSpace(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "is_active"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "is_active = 1"

    .line 92
    .local v2, "where":Ljava/lang/String;
    sget-object v3, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public static getCurrentPrivateSpace(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "is_active = 1"

    .line 71
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v7

    .line 73
    .local v2, "prjection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 75
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 81
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v7

    :cond_2
    :goto_0
    return v1

    .line 79
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 81
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getPrivateSpaceCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v7

    .line 56
    .local v2, "prjection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 64
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v7

    :cond_2
    :goto_0
    return v1

    .line 62
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 64
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getPrivateSpaceEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getCurrentPrivateSpace(Landroid/content/Context;)I

    move-result v7

    .line 154
    .local v7, "privateSpace":I
    if-gtz v7, :cond_1

    move-object v1, v8

    .line 167
    :cond_0
    :goto_0
    return-object v1

    .line 155
    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const-string v1, "email"

    aput-object v1, v2, v5

    .line 157
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 161
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 167
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v8

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static setCurrentPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 98
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->conformPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "privateSpace":I
    if-gtz v0, :cond_0

    .line 109
    .end local v0    # "privateSpace":I
    :goto_0
    return v5

    .line 101
    .restart local v0    # "privateSpace":I
    :cond_0
    invoke-static {p0}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->exitCurrentPrivateSpace(Landroid/content/Context;)V

    .line 103
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "is_active"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "where":Ljava/lang/String;
    sget-object v6, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v3, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "ret":I
    if-lez v2, :cond_1

    .end local v0    # "privateSpace":I
    :goto_1
    move v5, v0

    goto :goto_0

    .restart local v0    # "privateSpace":I
    :cond_1
    move v0, v5

    goto :goto_1
.end method

.method public static setPrivateSpaceEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldEmail"    # Ljava/lang/String;
    .param p2, "newEmail"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 175
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getCurrentPrivateSpace(Landroid/content/Context;)I

    move-result v1

    .line 176
    .local v1, "privateSpace":I
    if-gtz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v5

    .line 178
    :cond_1
    invoke-static {p0}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getPrivateSpaceEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "email"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "where":Ljava/lang/String;
    sget-object v5, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public static setPrivateSpacePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 132
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->conformPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 133
    .local v2, "oldPrivateSpace":I
    if-gtz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v7

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getCurrentPrivateSpace(Landroid/content/Context;)I

    move-result v0

    .line 136
    .local v0, "current":I
    if-ne v0, v2, :cond_0

    .line 138
    invoke-static {p0, p2}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->conformPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, "newPrivateSpace":I
    if-gtz v1, :cond_0

    .line 141
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "passwd"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "where":Ljava/lang/String;
    sget-object v7, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v5, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, "ret":I
    if-lez v4, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method
