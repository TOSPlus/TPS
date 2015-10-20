.class public final enum Landroid/annotation/TOSHook$TOSRomType;
.super Ljava/lang/Enum;
.source "TOSHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/TOSHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TOSRomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/TOSHook$TOSRomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/TOSHook$TOSRomType;

.field public static final enum MTK:Landroid/annotation/TOSHook$TOSRomType;

.field public static final enum QCOM:Landroid/annotation/TOSHook$TOSRomType;

.field public static final enum ROM:Landroid/annotation/TOSHook$TOSRomType;

.field public static final enum SAMSUNG:Landroid/annotation/TOSHook$TOSRomType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Landroid/annotation/TOSHook$TOSRomType;

    const-string v1, "ROM"

    invoke-direct {v0, v1, v2}, Landroid/annotation/TOSHook$TOSRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;

    .line 50
    new-instance v0, Landroid/annotation/TOSHook$TOSRomType;

    const-string v1, "QCOM"

    invoke-direct {v0, v1, v3}, Landroid/annotation/TOSHook$TOSRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/TOSHook$TOSRomType;->QCOM:Landroid/annotation/TOSHook$TOSRomType;

    .line 51
    new-instance v0, Landroid/annotation/TOSHook$TOSRomType;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v4}, Landroid/annotation/TOSHook$TOSRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/TOSHook$TOSRomType;->MTK:Landroid/annotation/TOSHook$TOSRomType;

    .line 52
    new-instance v0, Landroid/annotation/TOSHook$TOSRomType;

    const-string v1, "SAMSUNG"

    invoke-direct {v0, v1, v5}, Landroid/annotation/TOSHook$TOSRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/TOSHook$TOSRomType;->SAMSUNG:Landroid/annotation/TOSHook$TOSRomType;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/annotation/TOSHook$TOSRomType;

    sget-object v1, Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/annotation/TOSHook$TOSRomType;->QCOM:Landroid/annotation/TOSHook$TOSRomType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/TOSHook$TOSRomType;->MTK:Landroid/annotation/TOSHook$TOSRomType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/TOSHook$TOSRomType;->SAMSUNG:Landroid/annotation/TOSHook$TOSRomType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/annotation/TOSHook$TOSRomType;->$VALUES:[Landroid/annotation/TOSHook$TOSRomType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/TOSHook$TOSRomType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Landroid/annotation/TOSHook$TOSRomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/TOSHook$TOSRomType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/TOSHook$TOSRomType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/annotation/TOSHook$TOSRomType;->$VALUES:[Landroid/annotation/TOSHook$TOSRomType;

    invoke-virtual {v0}, [Landroid/annotation/TOSHook$TOSRomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/TOSHook$TOSRomType;

    return-object v0
.end method
