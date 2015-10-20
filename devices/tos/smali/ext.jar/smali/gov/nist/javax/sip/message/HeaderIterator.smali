.class public Lgov/nist/javax/sip/message/HeaderIterator;
.super Ljava/lang/Object;
.source "HeaderIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private index:I

.field private sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

.field private sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

.field private toRemove:Z


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 0
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    .line 46
    iput-object p2, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    iget v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 50
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-ne v0, v1, :cond_1

    .line 51
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 52
    :cond_1
    iput-boolean v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    .line 53
    iput v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    .line 54
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->index:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->toRemove:Z

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipMessage:Lgov/nist/javax/sip/message/SIPMessage;

    iget-object v1, p0, Lgov/nist/javax/sip/message/HeaderIterator;->sipHeader:Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    .line 90
    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
