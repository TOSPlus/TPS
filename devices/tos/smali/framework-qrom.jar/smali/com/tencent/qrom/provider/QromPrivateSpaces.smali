.class public Lcom/tencent/qrom/provider/QromPrivateSpaces;
.super Ljava/lang/Object;
.source "QromPrivateSpaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/provider/QromPrivateSpaces$Actions;,
        Lcom/tencent/qrom/provider/QromPrivateSpaces$Spaces;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "private_spaces"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "QromPrivateSpaces"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://private_spaces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/provider/QromPrivateSpaces;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
