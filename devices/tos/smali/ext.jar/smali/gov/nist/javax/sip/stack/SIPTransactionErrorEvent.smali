.class public Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;
.super Ljava/util/EventObject;
.source "SIPTransactionErrorEvent.java"


# static fields
.field public static final TIMEOUT_ERROR:I = 0x1

.field public static final TIMEOUT_RETRANSMIT:I = 0x3

.field public static final TRANSPORT_ERROR:I = 0x2

.field private static final serialVersionUID:J = -0x25a72e8a48effc87L


# instance fields
.field private errorID:I


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/stack/SIPTransaction;I)V
    .locals 0
    .param p1, "sourceTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;
    .param p2, "transactionErrorID"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 81
    iput p2, p0, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->errorID:I

    .line 83
    return-void
.end method


# virtual methods
.method public getErrorID()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->errorID:I

    return v0
.end method
