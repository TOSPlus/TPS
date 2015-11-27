.class public Lcom/android/commands/media/Media;
.super Lcom/android/internal/os/BaseCommand;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/media/Media$RemoteDisplayMonitor;
    }
.end annotation


# instance fields
.field private mAudioService:Landroid/media/IAudioService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/media/Media;)Landroid/media/IAudioService;
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/media/Media;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/commands/media/Media;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/android/commands/media/Media;

    invoke-direct {v0}, Lcom/android/commands/media/Media;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BaseCommand;->run([Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private runDispatch()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "cmd":Ljava/lang/String;
    const-string v0, "play"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 97
    const/16 v6, 0x7e

    .line 123
    .local v6, "keycode":I
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 124
    .local v1, "now":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/commands/media/Media;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 126
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/commands/media/Media;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 128
    .end local v1    # "now":J
    .end local v6    # "keycode":I
    :goto_34
    return-void

    .line 98
    :cond_35
    const-string v0, "pause"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 99
    const/16 v6, 0x7f

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 100
    .end local v6    # "keycode":I
    :cond_40
    const-string v0, "play-pause"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 101
    const/16 v6, 0x55

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 102
    .end local v6    # "keycode":I
    :cond_4b
    const-string v0, "mute"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 103
    const/16 v6, 0x5b

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 104
    .end local v6    # "keycode":I
    :cond_56
    const-string v0, "headsethook"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 105
    const/16 v6, 0x4f

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 106
    .end local v6    # "keycode":I
    :cond_61
    const-string v0, "stop"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 107
    const/16 v6, 0x56

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 108
    .end local v6    # "keycode":I
    :cond_6c
    const-string v0, "next"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 109
    const/16 v6, 0x57

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 110
    .end local v6    # "keycode":I
    :cond_77
    const-string v0, "previous"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 111
    const/16 v6, 0x58

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 112
    .end local v6    # "keycode":I
    :cond_82
    const-string v0, "rewind"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 113
    const/16 v6, 0x59

    .restart local v6    # "keycode":I
    goto :goto_e

    .line 114
    .end local v6    # "keycode":I
    :cond_8d
    const-string v0, "record"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 115
    const/16 v6, 0x82

    .restart local v6    # "keycode":I
    goto/16 :goto_e

    .line 116
    .end local v6    # "keycode":I
    :cond_99
    const-string v0, "fast-forward"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 117
    const/16 v6, 0x5a

    .restart local v6    # "keycode":I
    goto/16 :goto_e

    .line 119
    .end local v6    # "keycode":I
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown dispatch code \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->showError(Ljava/lang/String;)V

    goto/16 :goto_34
.end method

.method private runRemoteDisplay()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/android/commands/media/Media$RemoteDisplayMonitor;

    invoke-direct {v0, p0}, Lcom/android/commands/media/Media$RemoteDisplayMonitor;-><init>(Lcom/android/commands/media/Media;)V

    .line 223
    .local v0, "monitor":Lcom/android/commands/media/Media$RemoteDisplayMonitor;
    invoke-virtual {v0}, Lcom/android/commands/media/Media$RemoteDisplayMonitor;->run()V

    .line 224
    return-void
.end method

.method private sendMediaKey(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/media/Media;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 91
    :goto_5
    return-void

    .line 89
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public onRun()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/media/Media;->mAudioService:Landroid/media/IAudioService;

    .line 69
    iget-object v1, p0, Lcom/android/commands/media/Media;->mAudioService:Landroid/media/IAudioService;

    if-nez v1, :cond_1f

    .line 70
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to audio service; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "op":Ljava/lang/String;
    const-string v1, "dispatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 77
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runDispatch()V

    .line 84
    :goto_2e
    return-void

    .line 78
    :cond_2f
    const-string v1, "remote-display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 79
    invoke-direct {p0}, Lcom/android/commands/media/Media;->runRemoteDisplay()V

    goto :goto_2e

    .line 81
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BaseCommand;->showError(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 54
    const-string v0, "usage: media [subcommand] [options]\n       media dispatch KEY\n       media remote-display\n\nmedia dispatch: dispatch a media key to the current media client.\n                KEY may be: play, pause, play-pause, mute, headsethook,\n                stop, next, previous, rewind, recordm fast-forword.\nmedia remote-display: monitor remote display updates.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method
