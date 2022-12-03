.class public Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;
.super Ljava/lang/Object;
.source "McfJsonConfig.java"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;
    }
.end annotation


# instance fields
.field public mConfig:[B

.field public mPlatform:Ljava/lang/String;

.field public mTuningConfig:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getConfiguration()[B
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mConfig:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->MCF_OVERRIDE_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 5
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 9
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mConfig:[B

    .line 11
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "McfJsonConfig"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMcfConfig dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mConfig:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 14
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MCF configuration is invalid"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    return-object p0
.end method

.method public declared-synchronized getDebugLogDDMask()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPlatform()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mPlatform:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mPlatform:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mPlatform:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTuningConfiguration()[B
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mTuningConfig:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/shared/McfUtil;->readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mTuningConfig:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
