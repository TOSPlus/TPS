.class public final Lcom/tencent/qrom/provider/QromSecureTableValue$SmsTable;
.super Ljava/lang/Object;
.source "QromSecureTableValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromSecureTableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsTable"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AREAREASON:Ljava/lang/String; = "areareason"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/smslog"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/smslog"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "smslog"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue$SmsTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
