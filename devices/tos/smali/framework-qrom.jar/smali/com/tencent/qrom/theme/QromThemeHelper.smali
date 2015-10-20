.class public Lcom/tencent/qrom/theme/QromThemeHelper;
.super Ljava/lang/Object;
.source "QromThemeHelper.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "QromThemeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 24
    :cond_0
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/tencent/qrom/theme/QromConfiguration;->needNewResources(ILandroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Lcom/tencent/qrom/theme/QromThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 31
    :cond_0
    return-void
.end method
