.class public final enum Landroid/widget/QromStretchAnimation$TYPE;
.super Ljava/lang/Enum;
.source "QromStretchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromStretchAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/QromStretchAnimation$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/QromStretchAnimation$TYPE;

.field public static final enum horizontal:Landroid/widget/QromStretchAnimation$TYPE;

.field public static final enum vertical:Landroid/widget/QromStretchAnimation$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Landroid/widget/QromStretchAnimation$TYPE;

    const-string v1, "horizontal"

    invoke-direct {v0, v1, v2}, Landroid/widget/QromStretchAnimation$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    .line 36
    new-instance v0, Landroid/widget/QromStretchAnimation$TYPE;

    const-string v1, "vertical"

    invoke-direct {v0, v1, v3}, Landroid/widget/QromStretchAnimation$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/QromStretchAnimation$TYPE;

    sget-object v1, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/QromStretchAnimation$TYPE;->$VALUES:[Landroid/widget/QromStretchAnimation$TYPE;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/QromStretchAnimation$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Landroid/widget/QromStretchAnimation$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/QromStretchAnimation$TYPE;

    return-object v0
.end method

.method public static values()[Landroid/widget/QromStretchAnimation$TYPE;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/widget/QromStretchAnimation$TYPE;->$VALUES:[Landroid/widget/QromStretchAnimation$TYPE;

    invoke-virtual {v0}, [Landroid/widget/QromStretchAnimation$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/QromStretchAnimation$TYPE;

    return-object v0
.end method
