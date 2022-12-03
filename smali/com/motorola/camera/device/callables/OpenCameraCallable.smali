.class public Lcom/motorola/camera/device/callables/OpenCameraCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "OpenCameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIgnoreCallbacks:Z

.field public final mOpenCameraListener:Lcom/motorola/camera/device/callables/OpenCameraListener;

.field public final mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/OpenCameraListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 3
    new-instance p1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;-><init>(Lcom/motorola/camera/device/callables/OpenCameraCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mOpenCameraListener:Lcom/motorola/camera/device/callables/OpenCameraListener;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/play/core/internal/zzaj;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/internal/zzaj;"
        }
    .end annotation

    const-string v0, "OpenCameraCallable"

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {p0, v3, v2}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Object;I)V

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "device_policy"

    .line 4
    invoke-virtual {v1, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 5
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    new-instance v0, Lcom/motorola/camera/device/exception/CameraDisabledException;

    invoke-direct {v0}, Lcom/motorola/camera/device/exception/CameraDisabledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_1
    const/16 v1, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v1

    move v6, v4

    .line 7
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v9, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v11, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10, v11}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {p0, v3, v2}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :catch_0
    move-exception v8

    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_5

    :cond_3
    const-wide/16 v9, 0xc8

    .line 9
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 10
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->isCameraActivityRunning()Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v7, v7, -0x1

    if-gtz v7, :cond_3

    :cond_4
    if-gtz v7, :cond_2

    .line 12
    new-instance v1, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {v1, v8}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    const-string v2, "InterruptedException: while opening camera "

    .line 13
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 15
    :cond_5
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {p0, v8}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_2
    move-exception v8

    const-string v9, "activity state:"

    .line 16
    invoke-static {v9}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 17
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    iget-boolean v10, v10, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    .line 19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6

    .line 20
    iput-boolean v5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 21
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {p0, v8}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 22
    :cond_6
    iput-boolean v4, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v9, "com.android.systemui.camera_launch_source"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    move v9, v6

    :goto_1
    if-ge v6, v1, :cond_9

    .line 24
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 25
    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    const-wide/16 v10, 0x14

    .line 26
    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    move v9, v4

    :cond_9
    :goto_2
    if-nez v9, :cond_a

    .line 27
    iput-boolean v5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 28
    new-instance p0, Lcom/google/android/play/core/internal/zzaj;

    invoke-direct {p0, v8}, Lcom/google/android/play/core/internal/zzaj;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_a
    move v6, v5

    goto/16 :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenCameraCallable"

    return-object p0
.end method
