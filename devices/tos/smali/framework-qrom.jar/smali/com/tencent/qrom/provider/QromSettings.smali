.class public final Lcom/tencent/qrom/provider/QromSettings;
.super Ljava/lang/Object;
.source "QromSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/provider/QromSettings$System;,
        Lcom/tencent/qrom/provider/QromSettings$NameValueCache;,
        Lcom/tencent/qrom/provider/QromSettings$NameValueTable;,
        Lcom/tencent/qrom/provider/QromSettings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "qromsettings"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "QromSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method
