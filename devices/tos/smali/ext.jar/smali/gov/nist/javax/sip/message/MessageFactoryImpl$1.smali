.class Lgov/nist/javax/sip/message/MessageFactoryImpl$1;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/ParseExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov/nist/javax/sip/message/MessageFactoryImpl;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;->this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p3, "headerClass"    # Ljava/lang/Class;
    .param p4, "headerText"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;->this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;

    # getter for: Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z
    invoke-static {v0}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->access$000(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    const-class v0, Lgov/nist/javax/sip/header/From;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/To;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/MaxForwards;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/Via;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    if-eq p3, v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    if-ne p3, v0, :cond_1

    .line 723
    :cond_0
    throw p1

    .line 725
    :cond_1
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 728
    :cond_2
    return-void
.end method
