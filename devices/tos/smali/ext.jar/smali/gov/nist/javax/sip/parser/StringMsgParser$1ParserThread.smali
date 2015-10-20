.class Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;
.super Ljava/lang/Object;
.source "StringMsgParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov/nist/javax/sip/parser/StringMsgParser;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserThread"
.end annotation


# instance fields
.field messages:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "messagesToParse"    # [Ljava/lang/String;

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;->messages:[Ljava/lang/String;

    .line 676
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 679
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;->messages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 680
    new-instance v2, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v2}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 682
    .local v2, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;->messages:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v1

    .line 684
    .local v1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " branchId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    .end local v2    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :cond_0
    return-void

    .line 688
    .restart local v2    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
