.class public final enum Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
.super Ljava/lang/Enum;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qrom/app/AlertDialog$ButtonColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field public static final enum BTN_BLUE:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field public static final enum BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field public static final enum BTN_RED:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    const-string v1, "BTN_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    new-instance v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    const-string v1, "BTN_RED"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_RED:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    new-instance v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    const-string v1, "BTN_BLUE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_BLUE:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    sget-object v1, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_RED:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_BLUE:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->$VALUES:[Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->$VALUES:[Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {v0}, [Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    return-object v0
.end method
