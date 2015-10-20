.class Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
.super Ljava/lang/Object;
.source "QromNotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromNotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationItemInfo"
.end annotation


# instance fields
.field private bShowIcon:Z

.field private bShowNotification:Z

.field private bShowStatus:Z

.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qrom/services/QromNotificationManagerService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromNotificationManagerService;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->this$0:Lcom/tencent/qrom/services/QromNotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->mPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowIcon:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowNotification:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromNotificationManagerService$NotificationItemInfo;->bShowStatus:Z

    return p1
.end method
