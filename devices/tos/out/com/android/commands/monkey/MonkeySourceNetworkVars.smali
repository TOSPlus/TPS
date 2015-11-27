.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;,
        Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    }
.end annotation


# static fields
.field private static final VAR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 61
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    sput-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    .line 64
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.board"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.brand"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.device"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.display"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.fingerprint"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.host"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.id"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.model"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.product"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.tags"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.brand"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.type"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.user"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.cpu_abi"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.manufacturer"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.version.incremental"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.version.release"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.version.sdk"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "build.version.codename"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 86
    .local v0, "display":Landroid/view/Display;
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "display.width"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "display.height"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "display.density"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "am.current.package"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$1;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "am.current.action"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$2;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "am.current.comp.class"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "am.current.comp.package"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$4;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "am.current.data"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "am.current.categories"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "clock.realtime"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$7;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "clock.uptime"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$8;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "clock.millis"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$9;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    const-string v3, "monkey.version"

    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->VAR_MAP:Ljava/util/Map;

    return-object v0
.end method
