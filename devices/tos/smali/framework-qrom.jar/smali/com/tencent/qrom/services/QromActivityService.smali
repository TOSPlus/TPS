.class public Lcom/tencent/qrom/services/QromActivityService;
.super Ljava/lang/Object;
.source "QromActivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;
    }
.end annotation


# static fields
.field private static final QROM_ACTION_SEND_TRIMED_APP_LIST:Ljava/lang/String; = "qrom.action.SEND_TRIMED_APP_LIST"

.field static final QROM_ATTR_NAME:Ljava/lang/String; = "name"

.field public static final QROM_FILE_FORBID_APP:Ljava/lang/String; = "/data/system/user_blacklist.xml"

.field static final QROM_TAG_DEVICE:Ljava/lang/String; = "sleepmode"

.field static final QROM_TAG_ITEM:Ljava/lang/String; = "item"

.field static final QROM_TRIMAPP_DELAY:I = 0x493e0

.field static final TAG:Ljava/lang/String; = "QromActivityService"

.field private static final TrimedAppKey:Ljava/lang/String; = "qrom.trimed.blacklist_app_key"

.field static final USER_SET_BLACKLISTAPP_PATH:Ljava/lang/String; = "data/system/userset_blacklist.xml"


# instance fields
.field private TrimedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManager:Landroid/app/ActivityManager;

.field mAddBlackListAppReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mQromHandler:Landroid/os/Handler;

.field private final mTimeoutTask:Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;

.field mbQromTrimAppEnable:Z

.field mbScreenOn:Z

.field qrommBacklistApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mbScreenOn:Z

    .line 38
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mbQromTrimAppEnable:Z

    .line 39
    iput-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->mQromHandler:Landroid/os/Handler;

    .line 64
    new-instance v2, Lcom/tencent/qrom/services/QromActivityService$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/services/QromActivityService$1;-><init>(Lcom/tencent/qrom/services/QromActivityService;)V

    iput-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mAddBlackListAppReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v2, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;

    invoke-direct {v2, p0, v3}, Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;-><init>(Lcom/tencent/qrom/services/QromActivityService;Lcom/tencent/qrom/services/QromActivityService$1;)V

    iput-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mTimeoutTask:Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->TrimedApps:Ljava/util/ArrayList;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/tencent/qrom/services/QromActivityService;->mContext:Landroid/content/Context;

    .line 48
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/services/QromActivityService;->qromReadBlackListAppPkgNameFromXml(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromActivityService;->qromReadUserSetBlackListApp()V

    .line 51
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 52
    .local v1, "lp":Landroid/os/Looper;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mQromHandler:Landroid/os/Handler;

    .line 54
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mActivityManager:Landroid/app/ActivityManager;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "qrom.intent.action.ADD_BLACKLIST_APP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "qrom.intent.action.REMOVE_BLACKLIST_APP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->mAddBlackListAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/services/QromActivityService;)Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromActivityService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/qrom/services/QromActivityService;->mTimeoutTask:Lcom/tencent/qrom/services/QromActivityService$TimeoutTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/services/QromActivityService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromActivityService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/qrom/services/QromActivityService;->TrimedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/services/QromActivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromActivityService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromActivityService;->qromKillBackgroundApp()V

    return-void
.end method

.method private qromKillBackgroundApp()V
    .locals 14

    .prologue
    .line 107
    iget-object v11, p0, Lcom/tencent/qrom/services/QromActivityService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v11, p0, Lcom/tencent/qrom/services/QromActivityService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .line 109
    .local v9, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v10, ""

    .line 110
    .local v10, "topPkgName":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 111
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 114
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 115
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 116
    .local v4, "pid":I
    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 118
    .local v8, "processName":Ljava/lang/String;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 119
    .local v7, "pkgNameList":[Ljava/lang/String;
    array-length v5, v7

    .line 121
    .local v5, "pkgListLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 122
    aget-object v6, v7, v2

    .line 123
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0, v6}, Lcom/tencent/qrom/services/QromActivityService;->qromIsBlackListApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 124
    const-string v11, "QromActivityService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "kill background application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v11, p0, Lcom/tencent/qrom/services/QromActivityService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 126
    iget-object v11, p0, Lcom/tencent/qrom/services/QromActivityService;->TrimedApps:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "i":I
    .end local v4    # "pid":I
    .end local v5    # "pkgListLength":I
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pkgNameList":[Ljava/lang/String;
    .end local v8    # "processName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method qromIsBlackListApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "szPkgname"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "bRet":Z
    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    .local v1, "blacklistSize":I
    if-nez v1, :cond_0

    .line 148
    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/services/QromActivityService;->qromReadBlackListAppPkgNameFromXml(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromActivityService;->qromReadUserSetBlackListApp()V

    .line 150
    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 153
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 154
    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const/4 v0, 0x1

    .line 160
    :cond_1
    return v0

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method qromReadBlackListAppPkgNameFromXml(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7a070000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 170
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v4, "sleepmode"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 174
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 175
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 192
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 194
    .end local v1    # "element":Ljava/lang/String;
    :goto_1
    return-void

    .line 178
    .restart local v1    # "element":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    iget-object v4, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 187
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method qromReadUserSetBlackListApp()V
    .locals 8

    .prologue
    .line 245
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/data/system/user_blacklist.xml"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 246
    .local v4, "xml":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 247
    .local v3, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "UTF-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 248
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 249
    .local v1, "event":I
    const/4 v2, 0x0

    .line 250
    .local v2, "pkgName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 252
    packed-switch v1, :pswitch_data_0

    .line 274
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 258
    :pswitch_1
    const-string v5, "item"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v5, "QromActivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qromReadUserSetBlackListApp pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v5, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 276
    .end local v1    # "event":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xml":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "QromActivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qromReadUserSetBlackListApp eexception e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 267
    .restart local v1    # "event":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xml":Ljava/io/InputStream;
    :pswitch_2
    :try_start_1
    const-string v5, "item"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    const/4 v2, 0x0

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method qromReadUserSetBlackListApp_old()V
    .locals 10

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    .line 199
    .local v6, "path":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, "data/system/userset_blacklist.xml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v0, "deviceInfoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v1, "deviceInfoReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 214
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 216
    const-string v7, "sleepmode"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 221
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 222
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 240
    .end local v1    # "deviceInfoReader":Ljava/io/FileReader;
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    return-void

    .line 206
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "QromActivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "data/system/userset_blacklist.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "deviceInfoReader":Ljava/io/FileReader;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_2
    const-string v7, "item"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 225
    const/4 v4, 0x0

    .line 226
    .local v4, "name":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v7, p0, Lcom/tencent/qrom/services/QromActivityService;->qrommBacklistApp:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 230
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 233
    const-string v7, "QromActivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in deivceinfo parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 236
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    const-string v7, "QromActivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in deivceinfo parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method qromSendTrimedAppList()V
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->TrimedApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "qrom.trimed.blacklist_app_key"

    iget-object v3, p0, Lcom/tencent/qrom/services/QromActivityService;->TrimedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "qrom.action.SEND_TRIMED_APP_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/tencent/qrom/services/QromActivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
