.class public Lcom/motorola/camera/env/SettingsGlobal;
.super Ljava/lang/Object;
.source "SettingsGlobal.java"


# static fields
.field public static mNeedRestFlag:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized resetTransitionAnimationScaleValue()V
    .locals 4

    const-class v0, Lcom/motorola/camera/env/SettingsGlobal;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/env/SettingsGlobal;->mNeedRestFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SYSTEM_SETTING_TRANSITION_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 5
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "transition_animation_scale"

    .line 7
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    sput-boolean v1, Lcom/motorola/camera/env/SettingsGlobal;->mNeedRestFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
