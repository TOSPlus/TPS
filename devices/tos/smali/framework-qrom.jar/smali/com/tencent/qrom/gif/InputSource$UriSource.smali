.class public final Lcom/tencent/qrom/gif/InputSource$UriSource;
.super Lcom/tencent/qrom/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UriSource"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/tencent/qrom/gif/InputSource;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/tencent/qrom/gif/InputSource$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    iput-object p2, p0, Lcom/tencent/qrom/gif/InputSource$UriSource;->mUri:Landroid/net/Uri;

    .line 138
    return-void
.end method


# virtual methods
.method open()Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/qrom/gif/InputSource$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qrom/gif/InputSource$UriSource;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
