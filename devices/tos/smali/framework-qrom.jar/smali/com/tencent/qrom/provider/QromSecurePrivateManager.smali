.class public Lcom/tencent/qrom/provider/QromSecurePrivateManager;
.super Landroid/content/ContextWrapper;
.source "QromSecurePrivateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "private_spaces"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field public static final INCOMING_SETTING_TYPE:I = 0x0

.field public static final INSMSCONTENT_SETTING_TYPE:I = 0x2

.field public static final INSMSTITLE_SETTING_TYPE:I = 0x1

.field public static final PRIVATE_COUNT_MAX:I = 0xffff

.field public static final PRIVATE_PASSWD_MAX_LEN:I = 0x10

.field public static final PRIVATE_PASSWD_MIN_LEN:I = 0x4

.field public static final QROM_PRIVATEID:Ljava/lang/String; = "qrom_privateid"

.field public static final QROM_SECURE_CHANGE_PRIVATEID:Ljava/lang/String; = "qrom_secure_change_privateid"

.field public static final QROM_SECURE_DELETE_PRIVATEID:Ljava/lang/String; = "qrom_secure_delelte_privateid"

.field private static final QROM_SECURE_RECEIVER_PERMISSION:Ljava/lang/String; = "com.tencent.qromprivatespaces.permission.READ_PRIVATE_SPACES"

.field static final TAG:Ljava/lang/String; = "qromSecure"

.field private static item:Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;

.field private static mCurrentPrivateId:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "content://private_spaces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->AUTHORITY_URI:Landroid/net/Uri;

    .line 31
    sget-object v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "spaces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    sget-object v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public addPrivateId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "strEmail"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v3, -0x1

    .line 245
    .local v3, "reValue":I
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v3

    .line 273
    :goto_0
    return v4

    .line 248
    :cond_1
    invoke-static {p1, p2}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->conformPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 249
    if-lez v3, :cond_2

    .line 250
    const/4 v4, -0x2

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->getPrivateCount(Landroid/content/Context;)I

    move-result v2

    .line 259
    .local v2, "privateSum":I
    const v4, 0xffff

    if-lt v2, v4, :cond_3

    .line 260
    const/4 v4, -0x3

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->addPrivateSpace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 264
    invoke-static {p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getCurrentPrivateSpace(Landroid/content/Context;)I

    move-result v1

    .line 265
    .local v1, "privateId":I
    if-ne v3, v1, :cond_4

    .line 266
    sput v1, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v4, "qrom_secure_change_privateid"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "qrom_privateid"

    sget v5, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v4, "com.tencent.qromprivatespaces.permission.READ_PRIVATE_SPACES"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 271
    sget v3, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move v4, v3

    .line 273
    goto :goto_0
.end method

.method public deletePrivateId(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateId"    # I

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "reValue":Z
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    move v2, v1

    .line 289
    .end local v1    # "reValue":Z
    .local v2, "reValue":I
    :goto_0
    return v2

    .line 281
    .end local v2    # "reValue":I
    .restart local v1    # "reValue":Z
    :cond_1
    invoke-static {p1, p2}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->deletePrivateSpace(Landroid/content/Context;I)Z

    move-result v1

    .line 282
    if-eqz v1, :cond_2

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v3, "qrom_secure_delelte_privateid"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "qrom_privateid"

    sget v4, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v3, "com.tencent.qromprivatespaces.permission.READ_PRIVATE_SPACES"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x0

    sput v3, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v2, v1

    .line 289
    .restart local v2    # "reValue":I
    goto :goto_0
.end method

.method public exitCurrentPrivateId(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v1, -0x1

    .line 83
    .local v1, "reValue":I
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->exitCurrentPrivateSpace(Landroid/content/Context;)V

    .line 89
    const/4 v2, 0x0

    sput v2, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v2, "qrom_secure_change_privateid"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "qrom_privateid"

    sget v3, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v2, "com.tencent.qromprivatespaces.permission.READ_PRIVATE_SPACES"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActionTypeValue(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateid"    # I
    .param p3, "type"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "strValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move-object v1, v0

    .line 335
    .end local v0    # "strValue":Ljava/lang/String;
    .local v1, "strValue":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 334
    .end local v1    # "strValue":Ljava/lang/String;
    .restart local v0    # "strValue":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Actions;->getActionsRemark(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 335
    .end local v0    # "strValue":Ljava/lang/String;
    .restart local v1    # "strValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public getActionValue(Landroid/content/Context;II)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateid"    # I
    .param p3, "type"    # I

    .prologue
    .line 293
    const/4 v0, -0x1

    .line 294
    .local v0, "reValue":I
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move v1, v0

    .line 298
    .end local v0    # "reValue":I
    .local v1, "reValue":I
    :goto_0
    return v1

    .line 297
    .end local v1    # "reValue":I
    .restart local v0    # "reValue":I
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Actions;->getActionsValue(Landroid/content/Context;II)I

    move-result v0

    move v1, v0

    .line 298
    .end local v0    # "reValue":I
    .restart local v1    # "reValue":I
    goto :goto_0
.end method

.method public getCurrentPrivateId(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, -0x1

    .line 68
    .local v0, "privateid":I
    if-nez p1, :cond_0

    move v1, v0

    .line 78
    :goto_0
    return v1

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getCurrentPrivateSpace(Landroid/content/Context;)I

    move-result v0

    .line 74
    if-ltz v0, :cond_1

    .line 75
    sput v0, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    .line 78
    :cond_1
    sget v1, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    goto :goto_0
.end method

.method public getCurrentPrivateIdEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "strEmail":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 213
    .end local v0    # "strEmail":Ljava/lang/String;
    .local v1, "strEmail":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 212
    .end local v1    # "strEmail":Ljava/lang/String;
    .restart local v0    # "strEmail":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getPrivateSpaceEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 213
    .end local v0    # "strEmail":Ljava/lang/String;
    .restart local v1    # "strEmail":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPrivateAllItem(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v8, "listItem":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;>;"
    if-nez p1, :cond_1

    move-object v8, v1

    .line 240
    .end local v8    # "listItem":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 221
    .restart local v8    # "listItem":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v3

    const-string v1, "passwd"

    aput-object v1, v2, v4

    const-string v1, "email"

    aput-object v1, v2, v5

    .line 223
    .local v2, "prjection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 225
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 226
    if-eqz v6, :cond_3

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    new-instance v7, Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;

    invoke-direct {v7, p0}, Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;-><init>(Lcom/tencent/qrom/provider/QromSecurePrivateManager;)V

    .line 230
    .local v7, "item":Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;->privateId:I

    .line 231
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;->strPassWd:Ljava/lang/String;

    .line 232
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;->strEmail:Ljava/lang/String;

    .line 233
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 238
    .end local v7    # "item":Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getPrivateCount(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, -0x1

    .line 59
    .local v0, "count":I
    if-nez p1, :cond_0

    move v1, v0

    .line 63
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v1

    .line 62
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    invoke-static {p1}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->getPrivateSpaceCount(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    .line 63
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0
.end method

.method public getPrivateIdEmail(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateId"    # I

    .prologue
    const/4 v5, 0x1

    .line 187
    const/4 v7, 0x0

    .line 188
    .local v7, "strEmail":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 204
    .end local v7    # "strEmail":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 191
    .restart local v7    # "strEmail":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const-string v1, "email"

    aput-object v1, v2, v5

    .line 193
    .local v2, "prjection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 197
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 202
    .end local v7    # "strEmail":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "strEmail":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public getPrivateIdPasswd(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateId"    # I

    .prologue
    const/4 v5, 0x1

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, "strPassWd":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 174
    .end local v7    # "strPassWd":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 161
    .restart local v7    # "strPassWd":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const-string v1, "passwd"

    aput-object v1, v2, v5

    .line 163
    .local v2, "prjection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 167
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 168
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 172
    .end local v7    # "strPassWd":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "strPassWd":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public modifyPrivateIdPasswd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strOldPasswd"    # Ljava/lang/String;
    .param p3, "strNewPasswd"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, -0x1

    .line 149
    .local v0, "reValue":I
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    .line 153
    .end local v0    # "reValue":I
    .local v1, "reValue":I
    :goto_0
    return v1

    .line 152
    .end local v1    # "reValue":I
    .restart local v0    # "reValue":I
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->setPrivateSpacePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 153
    .end local v0    # "reValue":I
    .restart local v1    # "reValue":I
    goto :goto_0
.end method

.method public setActionTypeValue(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateid"    # I
    .param p3, "type"    # I
    .param p4, "strValue"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "reValue":Z
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-ltz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    .line 323
    .end local v0    # "reValue":Z
    .local v1, "reValue":I
    :goto_0
    return v1

    .line 319
    .end local v1    # "reValue":I
    .restart local v0    # "reValue":Z
    :cond_1
    sget v2, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    if-eq p2, v2, :cond_2

    move v1, v0

    .line 320
    .restart local v1    # "reValue":I
    goto :goto_0

    .line 322
    .end local v1    # "reValue":I
    :cond_2
    invoke-static {p1, p3, p4}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Actions;->setActionsRemark(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 323
    .restart local v1    # "reValue":I
    goto :goto_0
.end method

.method public setActionValue(Landroid/content/Context;III)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privateid"    # I
    .param p3, "type"    # I
    .param p4, "value"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "reValue":Z
    if-eqz p1, :cond_0

    if-ltz p4, :cond_0

    if-ltz p3, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    move v1, v0

    .line 311
    .end local v0    # "reValue":Z
    .local v1, "reValue":I
    :goto_0
    return v1

    .line 307
    .end local v1    # "reValue":I
    .restart local v0    # "reValue":Z
    :cond_1
    sget v2, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    if-eq p2, v2, :cond_2

    move v1, v0

    .line 308
    .restart local v1    # "reValue":I
    goto :goto_0

    .line 310
    .end local v1    # "reValue":I
    :cond_2
    invoke-static {p1, p3, p4}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Actions;->setActionsValue(Landroid/content/Context;II)Z

    move-result v0

    move v1, v0

    .line 311
    .restart local v1    # "reValue":I
    goto :goto_0
.end method

.method public setCurrentPrivateId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strPasswd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 99
    const/4 v3, -0x1

    .line 100
    .local v3, "prviateId":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v7, v3

    .line 143
    :goto_0
    return v7

    .line 103
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "strText":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v10, :cond_2

    move v7, v3

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "strFirstChar":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 109
    .local v2, "len":I
    add-int/lit8 v7, v2, -0x2

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "strEndChar":Ljava/lang/String;
    const/4 v0, -0x1

    .line 111
    .local v0, "index":I
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 113
    if-ltz v0, :cond_3

    .line 114
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    :cond_3
    const/4 v0, -0x1

    .line 118
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    if-ltz v0, :cond_4

    .line 121
    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 124
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v7, v3

    .line 126
    goto :goto_0

    .line 129
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_8

    :cond_7
    move v7, v3

    .line 130
    goto :goto_0

    .line 133
    :cond_8
    invoke-static {p1, v6}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->setCurrentPrivateSpace(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 135
    if-lez v3, :cond_9

    .line 136
    sput v3, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v7, "qrom_secure_change_privateid"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "qrom_privateid"

    sget v8, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v7, "com.tencent.qromprivatespaces.permission.READ_PRIVATE_SPACES"

    invoke-virtual {p1, v1, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    sget v7, Lcom/tencent/qrom/provider/QromSecurePrivateManager;->mCurrentPrivateId:I

    goto :goto_0
.end method

.method public setPrivateIdEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldEmail"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, "reValue":I
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    .line 183
    .end local v0    # "reValue":I
    .local v1, "reValue":I
    :goto_0
    return v1

    .line 182
    .end local v1    # "reValue":I
    .restart local v0    # "reValue":I
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;->setPrivateSpaceEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 183
    .end local v0    # "reValue":I
    .restart local v1    # "reValue":I
    goto :goto_0
.end method
