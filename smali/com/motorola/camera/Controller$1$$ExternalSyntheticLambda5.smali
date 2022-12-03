.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;

.field public static final synthetic INSTANCE$com$motorola$camera$settings$SettingsManager$$InternalSyntheticLambda$0$0a17abbf1d16c2c5263aab82abfd2b85889ea826e9b8f692c0e5d6fb2a28b25e$0:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->INSTANCE$com$motorola$camera$settings$SettingsManager$$InternalSyntheticLambda$0$0a17abbf1d16c2c5263aab82abfd2b85889ea826e9b8f692c0e5d6fb2a28b25e$0:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 1
    :pswitch_0
    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_2

    .line 4
    :catch_0
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 5
    iget v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string v1, "SettingSoundPlayer"

    const-string/jumbo v2, "waiting for load to complete before unloading"

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 9
    sget-object v6, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 10
    iget-object v7, v6, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    .line 11
    iget v8, v5, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mPool:I

    .line 12
    aget-object v7, v7, v8

    .line 13
    iget-object v6, v6, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 17
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aput-object v4, v1, v2

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    .line 20
    iput v3, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    .line 21
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 23
    sput-object v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 25
    :goto_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
