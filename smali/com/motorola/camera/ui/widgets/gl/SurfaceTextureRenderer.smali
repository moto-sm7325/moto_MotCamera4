.class public Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/motorola/camera/ui/widgets/gl/iRenderer;
.implements Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

.field public mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

.field public final mDrawLock:Ljava/lang/Object;

.field public mFrameCount:I

.field public mFrameTimeEnable:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mPresentationLock:Ljava/lang/Object;

.field public mPresentationTime:J

.field public mRenderContinuousComps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/ui/widgets/gl/iGlComponent;",
            ">;"
        }
    .end annotation
.end field

.field public mRenderContinuously:Z

.field public mRenderRequest:Z

.field public mStartTime:J

.field public mSurfaceReCreated:Z

.field public final mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 10
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    return-void
.end method


# virtual methods
.method public dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final doDrawFrame()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mActiveRender:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x4100

    const v9, 0x8d40

    const/4 v10, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCachePreview:Z

    if-eqz v0, :cond_5

    .line 4
    iput-boolean v6, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mCachePreview:Z

    .line 5
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v12, v0, Lcom/motorola/camera/PreviewSize;->width:I

    if-lez v12, :cond_4

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 7
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-static {v9, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    .line 10
    invoke-static {v10, v10, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    .line 11
    invoke-static {v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 12
    iget-object v12, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    .line 13
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getCameraProjectionMatrix()[F

    move-result-object v13

    .line 14
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getHudProjectionMatrix()[F

    move-result-object v14

    .line 15
    invoke-virtual {v0, v12, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->onDraw([F[F[F)V

    .line 16
    iget-object v12, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->width:I

    .line 17
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->y:F

    float-to-int v15, v13

    mul-int v13, v12, v15

    .line 18
    new-array v13, v13, [I

    .line 19
    invoke-static {v13}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v14

    .line 20
    invoke-virtual {v14, v6}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget-object v13, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v13, v13, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v13, v15

    int-to-float v13, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v13, v13, v16

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 22
    iget-object v13, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v13, v13, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v13, v15

    int-to-float v13, v13

    div-float v13, v13, v16

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v13, v0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v13, 0x0

    const/16 v17, 0x1908

    const/16 v18, 0x1401

    move-object/from16 v20, v14

    move v14, v10

    move v10, v15

    move v15, v12

    move/from16 v16, v10

    move-object/from16 v19, v20

    .line 23
    invoke-static/range {v13 .. v19}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->readPixels(IIIIIILjava/nio/Buffer;)V

    .line 24
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 25
    invoke-virtual/range {v20 .. v20}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 26
    iget-object v14, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v14

    .line 27
    invoke-static {v14, v13}, Lcom/motorola/camera/utility/QuickBlur;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    sget-object v15, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "context"

    .line 29
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v15, v8}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getSplashPathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 32
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v8

    const-string v9, "/splash_%s_%s_%s_%s_1.jpg"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x3

    aput-object v0, v11, v8

    .line 35
    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v15, v14}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getSplashPathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    invoke-virtual {v13, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 40
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->SPLASH_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    :try_start_2
    const-string v8, "TextureManager"

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 43
    :cond_3
    :goto_2
    monitor-exit v2

    goto/16 :goto_c

    .line 44
    :cond_4
    :goto_3
    monitor-exit v2

    goto/16 :goto_c

    .line 45
    :cond_5
    :goto_4
    :try_start_3
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v7

    goto :goto_5

    :cond_6
    move v0, v6

    :goto_5
    if-nez v0, :cond_e

    .line 47
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_7

    .line 48
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    .line 50
    iget-object v5, v5, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 51
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 52
    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 53
    :cond_7
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->ATLAS_LOADED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 54
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 55
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 56
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    monitor-exit v2

    goto/16 :goto_c

    .line 58
    :cond_8
    :try_start_4
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 59
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 60
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 61
    iget-object v5, v5, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 62
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 63
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 65
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    monitor-exit v2

    goto/16 :goto_c

    :cond_9
    if-eqz v0, :cond_a

    .line 67
    :try_start_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 68
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 69
    :cond_a
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/ui/widgets/gl/VboManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/VboManager;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/VboManager;-><init>()V

    iput-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/ui/widgets/gl/VboManager;

    .line 70
    :cond_b
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/ui/widgets/gl/VboManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->load()V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 73
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    .line 74
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$ui$widgets$gl$ShaderFactory$Shaders$s$values()[I

    move-result-object v3

    array-length v4, v3

    move v5, v6

    :goto_6
    if-ge v5, v4, :cond_c

    aget v8, v3, v5

    .line 76
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v10

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/Shader;

    .line 77
    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmVshaderSourceId$$com$motorola$camera$ui$widgets$gl$ShaderFactory$Shaders(I)I

    move-result v12

    .line 78
    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmFshaderSourceId$$com$motorola$camera$ui$widgets$gl$ShaderFactory$Shaders(I)I

    move-result v8

    .line 79
    invoke-direct {v11, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/Shader;-><init>(II)V

    .line 80
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 81
    :cond_c
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 82
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    :cond_d
    monitor-exit v2

    goto/16 :goto_c

    .line 84
    :cond_e
    :try_start_6
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 88
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 89
    invoke-virtual {v9, v6}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doUnloadTextures(Z)V

    .line 90
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    .line 92
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 93
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-wide/16 v11, 0x21

    cmp-long v9, v9, v11

    if-lez v9, :cond_f

    .line 95
    :cond_12
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mLoadComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 97
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 98
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    .line 99
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 101
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_14

    .line 102
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_7

    .line 103
    :cond_13
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 104
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 105
    :cond_14
    :goto_7
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    .line 106
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getCameraProjectionMatrix()[F

    move-result-object v3

    .line 107
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getHudProjectionMatrix()[F

    move-result-object v4

    .line 108
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v9, :cond_16

    goto :goto_8

    .line 109
    :cond_16
    iget v10, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    const/4 v11, 0x3

    if-ne v11, v10, :cond_15

    .line 110
    invoke-virtual {v9, v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onPreDraw([F[F[F)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 111
    iget-object v10, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 112
    :cond_17
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDrawFbo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    .line 114
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9, v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDrawFbo([F[F[F)V

    goto :goto_9

    :cond_18
    const v8, 0x8d40

    .line 116
    invoke-static {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    .line 117
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mClearColor:[F

    aget v9, v8, v6

    aget v10, v8, v7

    aget v8, v8, v5

    iget-boolean v11, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mTranslucent:Z

    if-eqz v11, :cond_19

    const/4 v11, 0x0

    goto :goto_a

    :cond_19
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_a
    invoke-static {v9, v10, v8, v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v8, 0x4100

    .line 118
    invoke-static {v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 119
    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    if-eqz v8, :cond_1a

    .line 120
    aget v9, v8, v6

    aget v10, v8, v7

    aget v5, v8, v5

    const/4 v11, 0x3

    aget v8, v8, v11

    invoke-static {v9, v10, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->viewport(IIII)V

    :cond_1a
    const/16 v5, 0x303

    .line 121
    invoke-static {v7, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 122
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDraw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    .line 124
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v8, v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onDraw([F[F[F)V

    goto :goto_b

    .line 126
    :cond_1b
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mDrawComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    monitor-exit v2

    .line 128
    :goto_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 129
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getPixelColor()V

    .line 130
    :cond_1c
    iget-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameTimeEnable:Z

    if-eqz v0, :cond_1d

    .line 131
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    .line 132
    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_1d

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 134
    iget-wide v4, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v7

    .line 135
    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    int-to-double v7, v0

    div-double/2addr v4, v7

    .line 136
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 137
    sget-object v7, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    const/high16 v8, 0x447a0000    # 1000.0f

    double-to-float v4, v4

    div-float/2addr v8, v4

    .line 138
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 139
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v7, v4}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 141
    iput v6, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameCount:I

    .line 142
    iput-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mStartTime:J

    .line 143
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void

    .line 144
    :goto_d
    monitor-exit v2

    throw v0
.end method

.method public doFrame(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuously:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    .line 6
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/ColorToolbox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mColorToolbox:Lcom/motorola/camera/ui/widgets/ColorToolbox;

    return-object p0
.end method

.method public getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public getNavBarSize()Landroid/graphics/PointF;
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getNavBarSize()Landroid/graphics/Point;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    if-eqz v1, :cond_0

    .line 4
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_0

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 6
    iget v4, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 7
    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float v0, v3

    mul-float/2addr v0, p0

    int-to-float p0, v1

    mul-float/2addr p0, v4

    .line 8
    invoke-virtual {v2, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v2
.end method

.method public getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Shader;

    :goto_0
    return-object p0
.end method

.method public getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object p0

    return-object p0
.end method

.method public getSharedContext()Lcom/motorola/camera/ui/widgets/gl/SharedContext;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    return-object v0
.end method

.method public getSurfaceDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    return p0
.end method

.method public getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    :goto_0
    return-object p0
.end method

.method public getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object p0

    .line 6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 8
    iput v2, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 9
    :cond_1
    iput v2, p0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object p0

    .line 10
    :cond_2
    :goto_1
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public getUiContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/ui/widgets/gl/VboManager;

    :goto_0
    return-object p0
.end method

.method public getYOffsetIfNotWideScreen()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getYOffsetIfNotWideScreen()F

    move-result p0

    return p0

    :cond_0
    const-string p0, "SurfaceTextureRenderer"

    const-string v0, "getYOffsetIfNotWideScreen, previewComponent is null"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getYOffsetIfNotWideScreen(ILcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0

    :cond_0
    const-string p0, "SurfaceTextureRenderer"

    const-string p1, "getYOffsetIfNotWideScreen, previewComponent is null"

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0

    :cond_0
    const-string p0, "SurfaceTextureRenderer"

    const-string p1, "getYOffsetIfNotWideScreen, previewComponent is null"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCliDisplay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->isCliDisplay()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDebugConfigChange()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RENDER_PREVIEW_CONTINUOUSLY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuously:Z

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLOT_PREVIEW_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mFrameTimeEnable:Z

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    const-class v0, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lcom/motorola/camera/cli/DualPreviewManager;->secondaryListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cli/DualPreviewManager$SecondaryListener;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/motorola/camera/cli/DualPreviewManager$SecondaryListener;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->doDrawFrame()V

    .line 6
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 v1, 0x3059

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    .line 9
    invoke-static {p1, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mPresentationTime:J

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 12
    :try_start_4
    monitor-exit v0

    throw p0

    .line 13
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 p1, -0x4

    .line 1
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->viewport(IIII)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    aput p1, v0, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v2, 0x3

    aput p3, v0, v2

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    .line 4
    iput-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    .line 5
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, p2, p3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    if-eqz v0, :cond_0

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Lcom/motorola/camera/PreviewSize;F)V

    .line 9
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, p2, p3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v0, p1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    mul-int/2addr p2, v1

    sub-int/2addr p3, p2

    .line 12
    iput p3, p1, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    const/16 p1, 0x1f03

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "glGetString"

    .line 3
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const-string p2, "OES_EGL_image_external"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SurfaceTextureRenderer"

    const-string p2, "OES_EGL_image_external GL extension is not supported!"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0xbe2

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 7
    invoke-static {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public playHaptic(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->playHaptic(I)V

    goto :goto_0

    :cond_0
    const-string p0, "SurfaceTextureRenderer"

    const-string p1, "Tried to perform haptics but previewComponent is null"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    return-void
.end method

.method public registerStateChangeListener(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->registerStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method

.method public requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestRenderSurface()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetBlendFunc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    const/16 v0, 0x303

    .line 3
    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    :cond_0
    return-void
.end method

.method public runOnGlThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setScreenBrightness(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void
.end method

.method public unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/motorola/camera/fsm/camera/StateChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->unregisterStateChangeListener(Ljava/util/Collection;)V

    return-void
.end method
