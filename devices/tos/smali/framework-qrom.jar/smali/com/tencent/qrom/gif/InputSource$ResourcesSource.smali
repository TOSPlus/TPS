.class public Lcom/tencent/qrom/gif/InputSource$ResourcesSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourcesSource"
.end annotation


# instance fields
.field private final mResourceId:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;->mResources:Landroid/content/res/Resources;

    .line 227
    iput p2, p0, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;->mResourceId:I

    .line 228
    return-void
.end method


# virtual methods
.method open()Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/tencent/qrom/gif/InputSource$ResourcesSource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
