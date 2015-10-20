.class public final enum Ljavax/sip/TransactionState;
.super Ljava/lang/Enum;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/sip/TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/sip/TransactionState;

.field public static final enum CALLING:Ljavax/sip/TransactionState;

.field public static final enum COMPLETED:Ljavax/sip/TransactionState;

.field public static final enum CONFIRMED:Ljavax/sip/TransactionState;

.field public static final enum PROCEEDING:Ljavax/sip/TransactionState;

.field public static final enum TERMINATED:Ljavax/sip/TransactionState;

.field public static final enum TRYING:Ljavax/sip/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "CALLING"

    invoke-direct {v0, v1, v3}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    .line 5
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "TRYING"

    invoke-direct {v0, v1, v4}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    .line 6
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "PROCEEDING"

    invoke-direct {v0, v1, v5}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    .line 7
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 8
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "CONFIRMED"

    invoke-direct {v0, v1, v7}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    .line 9
    new-instance v0, Ljavax/sip/TransactionState;

    const-string v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/sip/TransactionState;->$VALUES:[Ljavax/sip/TransactionState;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/sip/TransactionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Ljavax/sip/TransactionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/sip/TransactionState;

    return-object v0
.end method

.method public static values()[Ljavax/sip/TransactionState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Ljavax/sip/TransactionState;->$VALUES:[Ljavax/sip/TransactionState;

    invoke-virtual {v0}, [Ljavax/sip/TransactionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/sip/TransactionState;

    return-object v0
.end method
