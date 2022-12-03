.class public Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->loadTextures()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public processPreview(Landroid/media/Image;Z[J)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    .line 2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v2, Landroid/graphics/Rect;

    .line 5
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 6
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 8
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    const/4 v12, 0x0

    if-eqz v5, :cond_4

    .line 10
    monitor-enter v5

    .line 11
    :try_start_0
    iget-object v6, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 13
    iget-wide v6, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    .line 14
    iget-wide v8, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    iget v10, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v10, v3

    int-to-long v10, v10

    mul-long/2addr v8, v10

    add-long/2addr v8, v6

    cmp-long v6, v13, v8

    if-lez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v12

    .line 15
    :goto_0
    invoke-static {v12}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v7

    .line 16
    sget v10, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 17
    iget-boolean v8, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 18
    iput-boolean v3, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    .line 19
    sget-object v6, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v12

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v3

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v11, 0x2

    aget-object v9, v9, v11

    .line 23
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v15

    mul-int/2addr v15, v11

    .line 24
    invoke-static {v6, v8, v9, v15}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v6

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v12

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v9

    const/16 v11, 0x11

    .line 27
    invoke-static {v6, v8, v9, v7, v11}, Lcom/google/mlkit/vision/common/InputImage;->fromByteArray([BIIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v11

    .line 28
    iget-object v6, v5, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-interface {v6, v11}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v15

    new-instance v8, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;

    move-object v6, v8

    move-object v7, v5

    move-object v3, v8

    move-wide v8, v13

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;JILcom/google/mlkit/vision/common/InputImage;)V

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v6, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 30
    iget-object v7, v15, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    new-instance v8, Lcom/google/android/gms/tasks/zzn;

    .line 31
    invoke-direct {v8, v6, v3}, Lcom/google/android/gms/tasks/zzn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 32
    invoke-virtual {v7, v8}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    .line 33
    invoke-virtual {v15}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    .line 34
    sget-object v3, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    .line 35
    invoke-virtual {v15, v3}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/zzw;

    new-instance v3, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v5, v13, v14}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V

    .line 36
    iget-object v7, v15, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    new-instance v8, Lcom/google/android/gms/tasks/zzj;

    .line 37
    invoke-direct {v8, v6, v3}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 38
    invoke-virtual {v7, v8}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzq;)V

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/tasks/zzw;->zzi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_2
    monitor-exit v5

    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 42
    :cond_4
    :goto_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 44
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    if-eqz v3, :cond_b

    .line 47
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 48
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 49
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 50
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v6

    .line 51
    sget-object v7, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v6, v7}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 52
    sget-object v7, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 53
    invoke-static {v6, v7}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 54
    sget-object v8, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 55
    invoke-static {v6, v8}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 56
    sget-object v9, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 57
    invoke-static {v6, v9}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 58
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 59
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 60
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 61
    invoke-virtual {v10}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 62
    aget v22, v8, v12

    .line 63
    aget v6, v6, v12

    .line 64
    const-class v8, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v8

    int-to-float v6, v6

    int-to-float v9, v9

    const/high16 v10, 0x43200000    # 160.0f

    div-float/2addr v9, v10

    mul-float/2addr v9, v6

    .line 65
    :try_start_1
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 66
    rem-int/lit8 v9, v6, 0x2

    add-int/2addr v6, v9

    .line 67
    invoke-static {v7}, Lcom/motorola/camera/meishe/MeisheEffects;->sortEffects([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "MeisheEffects"

    const-string/jumbo v9, "unable to sort meishe effects list"

    .line 68
    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_5
    sget-object v7, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v9, v7

    const/4 v10, 0x1

    add-int/2addr v9, v10

    new-array v11, v9, [Ljava/lang/String;

    const-string v13, "Original"

    .line 70
    aput-object v13, v11, v12

    .line 71
    array-length v13, v7

    invoke-static {v7, v12, v11, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v20, v6

    move-object/from16 v21, v11

    invoke-static/range {v16 .. v22}, Lcom/motorola/camera/meishe/MeisheEffects;->native_configure_bitmap_container(Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;I)V

    move v3, v12

    :goto_3
    if-ge v3, v9, :cond_7

    .line 73
    aget-object v5, v11, v3

    .line 74
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 75
    invoke-static {v7, v5}, Lcom/motorola/camera/meishe/MeisheEffects;->native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v7, "MeisheEffects"

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to add meishe thumbnail effect "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 77
    :cond_6
    sget-object v10, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;

    new-instance v13, Landroid/util/Pair;

    invoke-direct {v13, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v10, Ljava/util/LinkedList;

    invoke-virtual {v10, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 78
    :cond_7
    sget-object v3, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    .line 79
    :cond_8
    :goto_5
    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    if-eqz v3, :cond_9

    .line 80
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v1, v12, v3}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)Z

    goto :goto_6

    .line 81
    :cond_9
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_a

    goto :goto_6

    .line 82
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 84
    invoke-static {v1, v5, v3}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)Z

    .line 85
    :goto_6
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_b
    if-eqz p2, :cond_c

    .line 86
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_7

    :cond_c
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_7
    move-object/from16 v3, p3

    .line 87
    invoke-static {v1, v0, v4, v2, v3}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result v3

    goto :goto_9

    :cond_d
    move v10, v3

    .line 88
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 90
    const-class v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v2

    .line 91
    :try_start_2
    sget-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    if-eqz v0, :cond_e

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzeImage(Landroid/media/Image;)F

    move-result v0

    .line 94
    new-instance v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    invoke-direct {v1, v3, v4, v0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;-><init>(JF)V

    .line 95
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    :cond_e
    monitor-exit v2

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_f
    :goto_8
    move v3, v10

    :goto_9
    return v3
.end method
