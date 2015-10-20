.class Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
.super Ljava/lang/Object;
.source "QromNotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromNotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppItemInfo"
.end annotation


# instance fields
.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qrom/services/QromNotificationManagerService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->this$0:Lcom/tencent/qrom/services/QromNotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$AppItemInfo;->mPkg:Ljava/lang/String;

    return-object p1
.end method
