.class public Lcom/tencent/qrom/provider/QromSecureTableValue;
.super Ljava/lang/Object;
.source "QromSecureTableValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/provider/QromSecureTableValue$PrivateListTable;,
        Lcom/tencent/qrom/provider/QromSecureTableValue$WhiteListTable;,
        Lcom/tencent/qrom/provider/QromSecureTableValue$KeyWordTable;,
        Lcom/tencent/qrom/provider/QromSecureTableValue$CallLogTable;,
        Lcom/tencent/qrom/provider/QromSecureTableValue$SmsTable;,
        Lcom/tencent/qrom/provider/QromSecureTableValue$BlackListTable;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "qrom_secure"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "QromSecureTableValue"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://qrom_secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
