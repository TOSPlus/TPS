.class public Lcom/tencent/qrom/app/TencentNotification;
.super Landroid/app/Notification;
.source "TencentNotification.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qrom/app/TencentNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static M_IS_IN_FRAMEWORK:Z = false

.field public static final TENCENT_NOTI_TYPE_ADD:I = 0x0

.field public static final TENCENT_NOTI_TYPE_DELETE:I = 0x2

.field public static final TENCENT_NOTI_TYPE_UPDATE:I = 0x1


# instance fields
.field public mNotification:Landroid/app/Notification;

.field public mNotificationGroupId:I

.field public mNotificationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qrom/app/TencentNotification;->M_IS_IN_FRAMEWORK:Z

    .line 41
    new-instance v0, Lcom/tencent/qrom/app/TencentNotification$1;

    invoke-direct {v0}, Lcom/tencent/qrom/app/TencentNotification$1;-><init>()V

    sput-object v0, Lcom/tencent/qrom/app/TencentNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;II)V
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "notificationId"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    .line 13
    iput v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationGroupId:I

    .line 15
    iput v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationType:I

    .line 24
    iput-object p1, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotification:Landroid/app/Notification;

    .line 25
    iput p2, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationGroupId:I

    .line 26
    iput p3, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationType:I

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    .line 13
    iput v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationGroupId:I

    .line 15
    iput v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationType:I

    .line 53
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotification:Landroid/app/Notification;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationGroupId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationType:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/qrom/app/TencentNotification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/tencent/qrom/app/TencentNotification$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/TencentNotification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static isInFramework()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/tencent/qrom/app/TencentNotification;->M_IS_IN_FRAMEWORK:Z

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotification:Landroid/app/Notification;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 37
    iget v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/tencent/qrom/app/TencentNotification;->mNotificationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
