.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method public constructor <init>(II)V
    .registers 14
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .prologue
    const-wide/16 v1, -0x1

    const/4 v7, 0x0

    .line 42
    const/4 v9, -0x1

    move-object v0, p0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 12
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "keyCode"    # I
    .param p7, "repeatCount"    # I
    .param p8, "metaState"    # I
    .param p9, "device"    # I
    .param p10, "scanCode"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 49
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 50
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 51
    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    .line 52
    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    .line 53
    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    .line 54
    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    .line 55
    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    .line 56
    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 61
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 62
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    goto :goto_a
.end method

.method public getDownTime()J
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    goto :goto_a
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    goto :goto_a
.end method

.method public getKeyCode()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    goto :goto_a
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 20
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 101
    const/4 v6, 0x1

    move/from16 v0, p3

    if-le v0, v6, :cond_46

    .line 103
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_93

    .line 104
    const-string v15, "ACTION_UP"

    .line 110
    .local v15, "note":Ljava/lang/String;
    :goto_e
    :try_start_e
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":Sending Key ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    // "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-static {v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_46} :catch_97

    .line 119
    .end local v15    # "note":Ljava/lang/String;
    :cond_46
    :goto_46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 120
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    if-nez v1, :cond_86

    .line 121
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 122
    .local v4, "eventTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_5a

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 125
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 126
    .local v2, "downTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_65

    .line 127
    move-wide v2, v4

    .line 129
    :cond_65
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    const/16 v12, 0x8

    const/16 v13, 0x101

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 133
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_86
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v6

    if-nez v6, :cond_c5

    .line 135
    const/4 v6, 0x0

    .line 137
    :goto_92
    return v6

    .line 106
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_93
    const-string v15, "ACTION_DOWN"

    .restart local v15    # "note":Ljava/lang/String;
    goto/16 :goto_e

    .line 113
    :catch_97
    move-exception v14

    .line 114
    .local v14, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":Sending Key ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    // Unknown key event"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 137
    .end local v14    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v15    # "note":Ljava/lang/String;
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_c5
    const/4 v6, 0x1

    goto :goto_92
.end method

.method public isThrottlable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDownTime(J)V
    .registers 5
    .param p1, "downTime"    # J

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_c

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify down time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_c
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    .line 85
    return-void
.end method

.method public setEventTime(J)V
    .registers 5
    .param p1, "eventTime"    # J

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v0, :cond_c

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot modify event time of this key event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    .line 92
    return-void
.end method
