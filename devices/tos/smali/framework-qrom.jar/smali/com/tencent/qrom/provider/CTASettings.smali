.class public Lcom/tencent/qrom/provider/CTASettings;
.super Ljava/lang/Object;
.source "CTASettings.java"


# static fields
.field public static final ACCESS_CTA_PERMISSION:Ljava/lang/String; = "com.tencent.qrom.cta.permission.ACCESS"

.field public static final ALLOWED_ALWAYS:I = 0x3

.field public static final ALLOWED_CSP:I = 0x2

.field public static final ALLOWED_ONCE:I = 0x1

.field private static final AUTHORITY:Ljava/lang/String; = "cta.provider"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COLUMN_PERMISSION_NAME:Ljava/lang/String; = "permission_name"

.field public static final COLUMN_SETTINGS_NAME:Ljava/lang/String; = "settings_name"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final CTA_CONFIRM_CLASS_NAME:Ljava/lang/String; = "com.tencent.qrom.cta.CTAConfirmActivity"

.field public static final CTA_EXTRA_INFO:Ljava/lang/String; = "qrom_extra_cta_info"

.field public static final CTA_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.qrom.cta"

.field public static final CTA_UPDATE_FLAG:Ljava/lang/String; = "update_flag"

.field public static final GLOBLE_SYSTEM_MONITOR:Ljava/lang/String; = "global_system_monitor"

.field public static final NOT_ALLOWED:I = 0x0

.field public static final PERMISIION_CONTENT_URI:Landroid/net/Uri;

.field public static final POWER_NETWORK_MONITOR:Ljava/lang/String; = "power_network_monitor"

.field public static final SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "CTASettings"

.field public static final TOS_SYSTEM_NETWORK_MONITOR:Ljava/lang/String; = "tos_system_network_monitor"

.field public static final UPDATE_FLAG_GRANT_AND_KILL:I = 0x2

.field public static final UPDATE_FLAG_GRANT_NOT_KILL:I = 0x1

.field public static final UPDATE_FLAG_NOT_GRANT_NOT_KILL:I

.field private static mContentProvider:Landroid/content/IContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://cta.provider/permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/CTASettings;->PERMISIION_CONTENT_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://cta.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/CTASettings;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/provider/CTASettings;->mContentProvider:Landroid/content/IContentProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllowNetworkPermission(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 198
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/qrom/provider/CTASettings;->getAllowPermission(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAllowPermission(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 261
    :cond_0
    const-string v1, "CTASettings"

    const-string v2, "getAllowPermission cr is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local p3    # "defValue":I
    :cond_1
    :goto_0
    return p3

    .line 266
    .restart local p3    # "defValue":I
    :cond_2
    const-string v1, "global_system_monitor"

    invoke-static {p0, v1, v2}, Lcom/tencent/qrom/provider/CTASettings;->getGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    .line 267
    .local v10, "enableMonitor":Z
    if-eqz v10, :cond_1

    .line 273
    if-nez p2, :cond_3

    .line 274
    const-string v4, "package_name = ?"

    .line 275
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v2

    .line 284
    .local v5, "selectionArgs":[Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 285
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {p0}, Lcom/tencent/qrom/provider/CTASettings;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 287
    .local v0, "cp":Landroid/content/IContentProvider;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qrom/provider/CTASettings;->PERMISIION_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "value"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 289
    if-nez v8, :cond_4

    .line 299
    if-eqz v8, :cond_1

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 277
    .end local v0    # "cp":Landroid/content/IContentProvider;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string v4, "package_name = ? AND permission_name = ?"

    .line 278
    .restart local v4    # "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v2

    aput-object p2, v5, v3

    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 293
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p3

    .line 299
    .end local p3    # "defValue":I
    if-eqz v8, :cond_1

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 299
    .restart local p3    # "defValue":I
    :cond_5
    if-eqz v8, :cond_1

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v9

    .line 297
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    if-eqz v8, :cond_1

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 299
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public static getGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 148
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 149
    :cond_0
    const-string v1, "CTASettings"

    const-string v2, "getGlobalSettings cr is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local p2    # "defValue":Z
    :cond_1
    :goto_0
    return p2

    .line 153
    .restart local p2    # "defValue":Z
    :cond_2
    const-string v4, "settings_name = ?"

    .line 154
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v12

    .line 155
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 157
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {p0}, Lcom/tencent/qrom/provider/CTASettings;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 159
    .local v0, "cp":Landroid/content/IContentProvider;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qrom/provider/CTASettings;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "value"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 161
    if-nez v8, :cond_3

    .line 172
    if-eqz v8, :cond_1

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, v11, :cond_5

    move v1, v11

    .line 172
    :goto_1
    if-eqz v8, :cond_4

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move p2, v1

    goto :goto_0

    :cond_5
    move v1, v12

    .line 167
    goto :goto_1

    :cond_6
    move v1, v12

    goto :goto_1

    .line 172
    .end local v10    # "value":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_1

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 169
    :catch_0
    move-exception v9

    .line 170
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    if-eqz v8, :cond_1

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 172
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method private static lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "cp":Landroid/content/IContentProvider;
    const-class v3, Lcom/tencent/qrom/provider/CTASettings;

    monitor-enter v3

    .line 109
    :try_start_0
    sget-object v0, Lcom/tencent/qrom/provider/CTASettings;->mContentProvider:Landroid/content/IContentProvider;

    .line 110
    if-nez v0, :cond_0

    .line 111
    const-string v2, "cta.provider"

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    sput-object v1, Lcom/tencent/qrom/provider/CTASettings;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0    # "cp":Landroid/content/IContentProvider;
    .local v1, "cp":Landroid/content/IContentProvider;
    move-object v0, v1

    .line 113
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_0
    monitor-exit v3

    .line 114
    return-object v0

    .line 113
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setAllowNetworkPermission(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # I

    .prologue
    .line 187
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/qrom/provider/CTASettings;->setAllowPermission(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method public static setAllowPermission(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowed"    # I

    .prologue
    .line 209
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 210
    :cond_0
    const-string v2, "CTASettings"

    const-string v3, "setAllowPermission cr is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "permission_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "value"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    sget-object v2, Lcom/tencent/qrom/provider/CTASettings;->PERMISIION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    const-string v3, "CTASettings"

    const-string v4, "setGlobalSettings cr is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "settings_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "value"

    if-eqz p2, :cond_2

    const-string v3, "1"

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/tencent/qrom/provider/CTASettings;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 134
    .local v0, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/qrom/provider/CTASettings;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v3, v4, v2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "cp":Landroid/content/IContentProvider;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static updateAllPermission(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # I
    .param p3, "flag"    # I

    .prologue
    .line 233
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 234
    :cond_0
    const-string v1, "CTASettings"

    const-string v2, "setAllowPermission cr is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    const-string v4, "package_name = ?"

    .line 240
    .local v4, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 241
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v3, "values":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v1, "update_flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-static {p0}, Lcom/tencent/qrom/provider/CTASettings;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 245
    .local v0, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qrom/provider/CTASettings;->PERMISIION_CONTENT_URI:Landroid/net/Uri;

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v0    # "cp":Landroid/content/IContentProvider;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 247
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
