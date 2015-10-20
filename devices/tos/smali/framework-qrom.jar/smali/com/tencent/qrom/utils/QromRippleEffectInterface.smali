.class public Lcom/tencent/qrom/utils/QromRippleEffectInterface;
.super Ljava/lang/Object;
.source "QromRippleEffectInterface.java"


# static fields
.field private static mQromMethod_RemoveOverlay:Ljava/lang/reflect/Method;

.field private static mQromMethod_SetupOverlayTmp:Ljava/lang/reflect/Method;

.field private static mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

.field private static mQromMethod_SetupOverlayWithArgs_delay:Ljava/lang/reflect/Method;

.field private static mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

.field private static mQromMethod_SetupOverlayWithoutArgs_delay:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs_delay:Ljava/lang/reflect/Method;

    .line 14
    sput-object v0, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs_delay:Ljava/lang/reflect/Method;

    .line 15
    sput-object v0, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    .line 16
    sput-object v0, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

    .line 17
    sput-object v0, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayTmp:Ljava/lang/reflect/Method;

    .line 18
    sput-object v0, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_RemoveOverlay:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeEffectionOverlay(Landroid/view/View;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 164
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_RemoveOverlay:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 165
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 166
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromRemoveEffectionOverlay"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_RemoveOverlay:Ljava/lang/reflect/Method;

    .line 169
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_RemoveOverlay:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setupEffectionOverlay(Landroid/view/View;Landroid/content/Context;)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 26
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromSetupEffectionOverlay"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    .line 30
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setupEffectionOverlay(Landroid/view/View;Landroid/content/Context;IIII)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cl"    # I
    .param p3, "ct"    # I
    .param p4, "cr"    # I
    .param p5, "cb"    # I

    .prologue
    .line 141
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 142
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromSetupEffectionOverlay"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

    .line 146
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setupEffectionOverlay(Landroid/view/View;Landroid/content/Context;J)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # J

    .prologue
    .line 47
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs_delay:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 48
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromSetupEffectionOverlay"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs_delay:Ljava/lang/reflect/Method;

    .line 52
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs_delay:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs_delay:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setupEffectionOverlay(Landroid/view/View;Landroid/content/Context;JI)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # J
    .param p4, "alpha"    # I

    .prologue
    .line 70
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 71
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromSetupEffectionOverlay"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    .line 75
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "lzh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithoutArgs:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setupEffectionOverlay(Landroid/view/View;Landroid/content/Context;JIII)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # J
    .param p4, "alpha"    # I
    .param p5, "animalpha"    # I
    .param p6, "color"    # I

    .prologue
    .line 94
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayTmp:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 95
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromSetupEffectionOverlay"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayTmp:Ljava/lang/reflect/Method;

    .line 99
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayTmp:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayTmp:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setupEffectionOverlay(Landroid/view/View;Landroid/content/Context;JIIII)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # J
    .param p4, "cl"    # I
    .param p5, "ct"    # I
    .param p6, "cr"    # I
    .param p7, "cb"    # I

    .prologue
    .line 117
    :try_start_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs_delay:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 118
    const-string v2, "android.view.View"

    invoke-static {v2}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "c":Ljava/lang/Class;
    const-string v2, "qromSetupEffectionOverlay"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs_delay:Ljava/lang/reflect/Method;

    .line 122
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    sget-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs_delay:Ljava/lang/reflect/Method;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/qrom/utils/QromRippleEffectInterface;->mQromMethod_SetupOverlayWithArgs_delay:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
