.class Lgov/nist/javax/sip/EventWrapper;
.super Ljava/lang/Object;
.source "EventWrapper.java"


# instance fields
.field protected sipEvent:Ljava/util/EventObject;

.field protected transaction:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method constructor <init>(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 0
    .param p1, "sipEvent"    # Ljava/util/EventObject;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 41
    iput-object p2, p0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 42
    return-void
.end method
