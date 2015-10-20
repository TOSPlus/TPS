.class public Lcom/tencent/qrom/theme/QromConfiguration;
.super Ljava/lang/Object;
.source "QromConfiguration.java"


# static fields
.field public static final ACTION_QROM_THEME_CHANGED:Ljava/lang/String; = "tencent.intent.action.QROM_THEME_CHANGED"

.field public static final CONFIG_FLIPFONT:I = 0x24000000

.field private static final DEBUG:Z = false

.field public static final FLAG_DEFAULT_THEME:Ljava/lang/String; = "defaultTheme"

.field public static final FLAG_THEME_CHANGED:Ljava/lang/String; = "themeChangedFlag"

.field public static final PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.tencent.qrom.contacts"

.field public static final PACKAGE_NAME_LAUNCHER:Ljava/lang/String; = "com.tencent.qrom.qlauncher"

.field public static final PACKAGE_NAME_MMS:Ljava/lang/String; = "com.tencent.qrom.mms"

.field public static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.systemui"

.field public static final PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.settings"

.field public static final PROP_DEFAULT_THEME:Ljava/lang/String; = "persist.sys.theme"

.field public static final PROP_THEME_CHANGED_FLAG:Ljava/lang/String; = "persist.sys.themeflag"

.field public static final QROM_THEME_CHANGED:I = 0x16000000

.field private static final TAG:Ljava/lang/String; = "QromConfiguration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeThemeFlag(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 8
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "themeFlag"    # I

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const v6, 0x33d6bf95    # 1.0E-7f

    const/4 v5, 0x0

    .line 29
    if-nez p0, :cond_1

    .line 30
    const/4 p0, 0x0

    .line 53
    .end local p0    # "configuration":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-object p0

    .line 32
    .restart local p0    # "configuration":Landroid/content/res/Configuration;
    :cond_1
    const/4 v1, 0x0

    .line 33
    .local v1, "newScale":F
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 37
    .local v0, "fontScale":F
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 39
    mul-float v3, v0, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v7

    .line 40
    .local v2, "tempScale":F
    add-float v1, v2, v6

    .line 49
    .end local v2    # "tempScale":F
    :cond_2
    :goto_1
    cmpl-float v3, v1, v5

    if-lez v3, :cond_0

    .line 50
    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 51
    const-string v3, "persist.sys.themeflag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    add-float v1, v0, v6

    goto :goto_1
.end method

.method public static needNewResources(ILandroid/content/res/Configuration;)Z
    .locals 5
    .param p0, "configChange"    # I
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "flag":Z
    if-nez p1, :cond_0

    move v1, v0

    .line 71
    .end local v0    # "flag":Z
    .local v1, "flag":I
    :goto_0
    return v1

    .line 61
    .end local v1    # "flag":I
    .restart local v0    # "flag":Z
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 62
    .local v2, "fontScale":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    .line 64
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 71
    .restart local v1    # "flag":I
    goto :goto_0

    .line 66
    .end local v1    # "flag":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
