.class public Lgov/nist/javax/sip/header/RecordRouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RecordRouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/RecordRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17f03837c2e0c363L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/RecordRoute;

    const-string v1, "Record-Route"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lgov/nist/javax/sip/header/RecordRouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRouteList;-><init>()V

    .line 47
    .local v0, "retval":Lgov/nist/javax/sip/header/RecordRouteList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RecordRouteList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RecordRouteList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 48
    return-object v0
.end method
