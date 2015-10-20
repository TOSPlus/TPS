.class public Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;
.super Ljava/lang/Object;
.source "QromSecurePrivateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/provider/QromSecurePrivateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateListItem"
.end annotation


# instance fields
.field public privateId:I

.field public strEmail:Ljava/lang/String;

.field public strPassWd:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qrom/provider/QromSecurePrivateManager;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/provider/QromSecurePrivateManager;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tencent/qrom/provider/QromSecurePrivateManager$PrivateListItem;->this$0:Lcom/tencent/qrom/provider/QromSecurePrivateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
