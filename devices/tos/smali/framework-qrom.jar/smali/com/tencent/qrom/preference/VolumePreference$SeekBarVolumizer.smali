.class public Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/tencent/qrom/preference/VolumePreference;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    .line 254
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;-><init>(Lcom/tencent/qrom/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qrom/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 257
    iput-object p1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->this$0:Lcom/tencent/qrom/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 236
    iput v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 238
    iput v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 240
    new-instance v0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 258
    iput-object p2, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 259
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 260
    iput p4, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 261
    iput-object p3, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 263
    invoke-direct {p0, p3, p5}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 226
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "defaultUri"    # Landroid/net/Uri;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 268
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 269
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 270
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    if-nez p2, :cond_0

    .line 277
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 278
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 286
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 288
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 291
    :cond_1
    return-void

    .line 279
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 280
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 282
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 355
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 360
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 363
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 365
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 366
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 367
    iput v2, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 370
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 371
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 372
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 305
    if-nez p3, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;

    .prologue
    .line 384
    iget v0, p1, Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 385
    iget v0, p1, Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 386
    iget v0, p1, Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 387
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;

    .prologue
    .line 377
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 378
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;->volume:I

    .line 379
    iget v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lcom/tencent/qrom/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 381
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 320
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 326
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 315
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 301
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 330
    return-void
.end method

.method public startSample()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->this$0:Lcom/tencent/qrom/preference/VolumePreference;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/preference/VolumePreference;->onSampleStarting(Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;)V

    .line 338
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 341
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 295
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 296
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 297
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/qrom/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 347
    :cond_0
    return-void
.end method
