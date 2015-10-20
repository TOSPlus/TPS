.class public final Lcom/tencent/qrom/provider/QromSecureTableValue$BlackListTable;
.super Ljava/lang/Object;
.source "QromSecureTableValue.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromSecureTableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlackListTable"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactlist"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactlist"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final RING_STATUS:Ljava/lang/String; = "ringStatus"

.field public static final SMSTATUS:Ljava/lang/String; = "SMStatus"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contactlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue$BlackListTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
