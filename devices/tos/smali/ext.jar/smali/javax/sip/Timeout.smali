.class public final enum Ljavax/sip/Timeout;
.super Ljava/lang/Enum;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/sip/Timeout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/sip/Timeout;

.field public static final enum RETRANSMIT:Ljavax/sip/Timeout;

.field public static final enum TRANSACTION:Ljavax/sip/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Ljavax/sip/Timeout;

    const-string v1, "RETRANSMIT"

    invoke-direct {v0, v1, v2}, Ljavax/sip/Timeout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    .line 5
    new-instance v0, Ljavax/sip/Timeout;

    const-string v1, "TRANSACTION"

    invoke-direct {v0, v1, v3}, Ljavax/sip/Timeout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/sip/Timeout;

    sget-object v1, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    aput-object v1, v0, v3

    sput-object v0, Ljavax/sip/Timeout;->$VALUES:[Ljavax/sip/Timeout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/sip/Timeout;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Ljavax/sip/Timeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/sip/Timeout;

    return-object v0
.end method

.method public static values()[Ljavax/sip/Timeout;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Ljavax/sip/Timeout;->$VALUES:[Ljavax/sip/Timeout;

    invoke-virtual {v0}, [Ljavax/sip/Timeout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/sip/Timeout;

    return-object v0
.end method
