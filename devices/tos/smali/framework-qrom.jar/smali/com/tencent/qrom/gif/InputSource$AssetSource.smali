.class public final Lcom/tencent/qrom/gif/InputSource$AssetSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetSource"
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetName"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    .line 161
    iput-object p2, p0, Lcom/tencent/qrom/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    .line 162
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
    .line 166
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/tencent/qrom/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
