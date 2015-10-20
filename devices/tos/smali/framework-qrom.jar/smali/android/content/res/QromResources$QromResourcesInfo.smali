.class public Landroid/content/res/QromResources$QromResourcesInfo;
.super Ljava/lang/Object;
.source "QromResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/QromResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QromResourcesInfo"
.end annotation


# static fields
.field public static sUpdatedTimeSystem:Ljava/lang/Long;


# instance fields
.field public mIsHasQromThemeValues:Z

.field public mQromThemeChangeEnable:Z

.field public mQromThemeCookies:Landroid/util/SparseIntArray;

.field public mQromThemeIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mQromThemeResources:Lcom/tencent/qrom/theme/QromThemeResources;

.field public mQromThemeSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/QromResources$QromResourcesInfo;->sUpdatedTimeSystem:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mIsHasQromThemeValues:Z

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeCookies:Landroid/util/SparseIntArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeIntegers:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeSkipFiles:Landroid/util/SparseArray;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mQromThemeChangeEnable:Z

    .line 92
    iput-wide v1, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J

    .line 93
    iput-wide v1, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mValueLoadedTime:J

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/QromResources$QromResourcesInfo;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/res/QromResources$QromResourcesInfo;

    .prologue
    .line 84
    iget-wide v0, p0, Landroid/content/res/QromResources$QromResourcesInfo;->mUpdatedTime:J

    return-wide v0
.end method
