.class public Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;
.super Ljava/lang/Object;
.source "QromThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/theme/QromThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeFileInfo"
.end annotation


# instance fields
.field public mDensity:I

.field public mInput:Ljava/io/InputStream;

.field public mSize:J

.field final synthetic this$0:Lcom/tencent/qrom/theme/QromThemeZipFile;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/theme/QromThemeZipFile;Ljava/io/InputStream;J)V
    .locals 0
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "size"    # J

    .prologue
    .line 516
    iput-object p1, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->this$0:Lcom/tencent/qrom/theme/QromThemeZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 518
    iput-wide p3, p0, Lcom/tencent/qrom/theme/QromThemeZipFile$ThemeFileInfo;->mSize:J

    .line 519
    return-void
.end method
