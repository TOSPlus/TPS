.class public final Lcom/tencent/qrom/theme/QromThemeResources$MetaData;
.super Ljava/lang/Object;
.source "QromThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/theme/QromThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MetaData"
.end annotation


# instance fields
.field public mSupportCharSequence:Z

.field public mSupportFile:Z

.field public mSupportInt:Z

.field public mThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "supportInt"    # Z
    .param p3, "supportCharSequence"    # Z
    .param p4, "supportFile"    # Z

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportCharSequence:Z

    .line 36
    iput-boolean v0, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportFile:Z

    .line 37
    iput-boolean v0, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportInt:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportInt:Z

    .line 43
    iput-boolean p3, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportCharSequence:Z

    .line 44
    iput-boolean p4, p0, Lcom/tencent/qrom/theme/QromThemeResources$MetaData;->mSupportFile:Z

    .line 45
    return-void
.end method
