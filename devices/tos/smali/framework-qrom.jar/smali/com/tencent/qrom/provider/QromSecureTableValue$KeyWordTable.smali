.class public final Lcom/tencent/qrom/provider/QromSecureTableValue$KeyWordTable;
.super Ljava/lang/Object;
.source "QromSecureTableValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromSecureTableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyWordTable"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/smskeyword"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/smskeyword"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final SMSKEYWORD:Ljava/lang/String; = "smskeyword"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "smskeyword"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromSecureTableValue$KeyWordTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
