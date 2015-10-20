.class public Lorg/apache/http/impl/client/RedirectLocations;
.super Ljava/lang/Object;
.source "RedirectLocations.java"


# instance fields
.field private final uris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    .line 48
    return-void
.end method


# virtual methods
.method public add(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public contains(Ljava/net/URI;)Z
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/net/URI;)Z
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
