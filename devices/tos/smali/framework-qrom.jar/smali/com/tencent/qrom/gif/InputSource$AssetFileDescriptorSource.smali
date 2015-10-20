.class public Lcom/tencent/qrom/gif/InputSource$AssetFileDescriptorSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetFileDescriptorSource"
.end annotation


# instance fields
.field private final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$AssetFileDescriptorSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 248
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
    .line 252
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$AssetFileDescriptorSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
