.class final enum Lcom/android/commands/settings/SettingsCmd$CommandVerb;
.super Ljava/lang/Enum;
.source "SettingsCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/settings/SettingsCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CommandVerb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/commands/settings/SettingsCmd$CommandVerb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    .line 35
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    .line 36
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->$VALUES:[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    return-object v0
.end method

.method public static values()[Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->$VALUES:[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    return-object v0
.end method
