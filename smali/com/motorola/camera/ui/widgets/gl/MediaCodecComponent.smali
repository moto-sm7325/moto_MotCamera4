.class public Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "MediaCodecComponent.java"


# instance fields
.field public final mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

.field public mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    return-void
.end method


# virtual methods
.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecComponent"

    return-object p0
.end method

.method public loadTextures()Z
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->loadTexture()V

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw([F[F[F)V
    .locals 6

    .line 1
    sget-object p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v1, v4, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    .line 9
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->onDraw([F[F)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 11
    iget-object v0, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object p3, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v3, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 14
    iget-wide v3, v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v0, v3

    .line 15
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p3

    const/16 v3, 0x3059

    .line 17
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 18
    invoke-static {p3, v3, v0, v1}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 19
    iget-object p2, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    .line 20
    iget-object p3, p2, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p2, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p2, p2, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v1, "egl"

    .line 21
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "display"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "surface"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p3, v0, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-string p2, "eglSwapBuffers"

    .line 23
    invoke-static {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    .line 24
    :goto_4
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, p2, p3, p0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_6
    return-void
.end method

.method public onDrawFbo([F[F[F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    .line 2
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->onDrawFbo([F[F)V

    :cond_0
    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v3, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 4
    rem-int/lit16 p0, p4, 0xb4

    if-nez p0, :cond_1

    add-int/lit16 p4, p4, 0xb4

    rem-int/lit16 p4, p4, 0x168

    :cond_1
    move v4, p4

    .line 5
    new-instance v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-object p0, p3

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v6, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 6
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 8
    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    move-object v2, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "MediaCodecComponent"

    const-string p2, "Capture failed due to invalid bitmap"

    .line 9
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Lcom/motorola/camera/fsm/camera/iCameraFsm;

    check-cast p1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_1
    return-void
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    if-nez v4, :cond_2

    return-void

    .line 2
    :cond_2
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_9

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    goto :goto_2

    .line 7
    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    move-object v1, v2

    .line 9
    :cond_4
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 10
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 11
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    .line 12
    :goto_3
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    .line 13
    :goto_4
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v3

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 15
    :cond_7
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 16
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 17
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-static {v3, v5}, Landroidx/fragment/R$anim;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v3

    goto :goto_5

    .line 19
    :cond_8
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-static {v3}, Landroidx/fragment/R$anim;->getMainDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 21
    :goto_5
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 22
    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 23
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v4, v4

    neg-float v3, v3

    const/4 v8, 0x0

    invoke-direct {v6, v4, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 24
    invoke-virtual {v1, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    int-to-float v2, v2

    div-float/2addr v2, v5

    int-to-float v0, v0

    div-float/2addr v0, v5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 26
    invoke-virtual {v1, v8, v8, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFFF)V

    goto/16 :goto_f

    .line 27
    :cond_9
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v4, :cond_11

    .line 28
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 29
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;

    move-result-object v2

    .line 30
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 31
    iget-boolean v7, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    iput-object v2, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    .line 32
    :cond_a
    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v7, "MediaCodecEngine"

    iget-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 33
    iget-object v11, v11, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 34
    iget v11, v4, Lcom/motorola/camera/PreviewSize;->width:I

    iget v12, v4, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v11, v12}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v11

    iput-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 35
    :try_start_0
    new-instance v11, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->createMediaCodec(Lcom/motorola/camera/PreviewSize;)Landroid/media/MediaCodec;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;

    invoke-direct {v13, v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;)V

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V

    iput-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 36
    iget-boolean v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v12, :cond_b

    .line 37
    iput-boolean v5, v11, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->isUsingVideoSurface:Z

    .line 38
    iget-object v11, v11, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v11

    .line 39
    iput-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    .line 40
    :cond_b
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    .line 41
    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 42
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_c

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    invoke-static {}, Lcom/motorola/camera/Util;->isCallActive()Z

    move-result v10

    if-nez v10, :cond_d

    move v10, v5

    goto :goto_6

    :cond_d
    move v10, v6

    :goto_6
    if-eqz v10, :cond_f

    .line 44
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getAudioSource()I

    move-result v12

    .line 45
    iget-object v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v11, v10, Landroid/media/CamcorderProfile;->audioChannels:I

    if-ne v11, v8, :cond_e

    const/16 v11, 0xc

    goto :goto_7

    :cond_e
    const/16 v11, 0x10

    :goto_7
    move v14, v11

    .line 46
    iget v10, v10, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-static {v10, v14, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v10

    mul-int/2addr v10, v8

    iput v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    .line 47
    new-instance v10, Landroid/media/AudioRecord;

    iget-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v13, v11, Landroid/media/CamcorderProfile;->audioSampleRate:I

    const/4 v15, 0x2

    iget v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    move/from16 v16, v11

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 48
    iput-object v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    .line 49
    new-instance v10, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->createAudioEncoder()Landroid/media/MediaCodec;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;

    iget-object v13, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-direct {v12, v1, v13}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V

    iput-object v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v10, v8

    goto :goto_8

    :cond_f
    move v10, v5

    .line 50
    :goto_8
    iget-boolean v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v11, :cond_10

    goto :goto_9

    .line 51
    :cond_10
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 52
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 53
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 54
    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v13

    .line 55
    invoke-static {v0, v11, v12, v13}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v0

    .line 56
    :goto_9
    new-instance v11, Ljava/util/concurrent/CyclicBarrier;

    new-instance v12, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;I)V

    invoke-direct {v11, v10, v12}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    iput-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 57
    new-instance v10, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v10}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 58
    new-instance v10, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    invoke-direct {v10}, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;-><init>()V

    iput-object v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    .line 59
    new-instance v11, Lcom/motorola/camera/saving/FileName;

    sget-object v12, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    iget-wide v13, v10, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureTime:J

    invoke-direct {v11, v12, v13, v14}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    .line 60
    :try_start_1
    invoke-virtual {v11}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v10

    .line 61
    invoke-static {v10}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v9

    .line 62
    iget-object v10, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v4

    iput-object v4, v10, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    .line 63
    iget-object v4, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iput v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    .line 64
    iput-object v11, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 65
    iput-object v9, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 66
    move-object v0, v9

    check-cast v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputFD:Ljava/io/FileDescriptor;

    .line 67
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v4, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputFD:Ljava/io/FileDescriptor;

    invoke-direct {v0, v4, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 68
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 69
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v10}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 71
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_27

    .line 72
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v4}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v11, v4, v6

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string/jumbo v0, "setup failed,filename:%s,message:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v9}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 75
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 76
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 78
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_27

    .line 79
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_f

    :catch_1
    move-exception v0

    new-array v4, v5, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "Unable to create encoder:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    iput-object v9, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 82
    iput-object v9, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 83
    iput-object v9, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    .line 84
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 85
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 87
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_27

    .line 88
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_f

    .line 89
    :cond_11
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 90
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 91
    monitor-enter v1

    .line 92
    :try_start_2
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 93
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_12

    .line 94
    monitor-exit v1

    goto/16 :goto_f

    .line 95
    :cond_12
    :try_start_3
    iget-boolean v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    iget-object v2, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/EGLHelper;->createWindowSurface(Landroid/view/Surface;)V

    .line 96
    :cond_13
    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->startEngine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "MediaCodecEngine"

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 99
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const v15, 0x7f120130

    const/16 v18, 0x1

    const/16 v22, 0x0

    const/16 v19, 0x4

    .line 100
    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v4

    const/16 v11, 0x7d0

    .line 101
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v4, :cond_18

    if-eq v4, v10, :cond_17

    if-eq v4, v7, :cond_15

    const/4 v5, 0x5

    if-eq v4, v5, :cond_14

    move/from16 v17, v6

    goto :goto_b

    :cond_14
    const/16 v4, 0xbb8

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v17, v10

    goto :goto_b

    .line 103
    :cond_15
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    move/from16 v17, v5

    goto :goto_a

    .line 104
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v17, v8

    goto :goto_b

    :cond_18
    move/from16 v17, v6

    :goto_a
    move-object v9, v11

    :goto_b
    if-nez v9, :cond_19

    const/16 v4, 0xfa0

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 106
    :cond_19
    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v12, 0x1

    .line 107
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v23, 0x0

    move-object v11, v4

    move/from16 v13, v18

    invoke-direct/range {v11 .. v23}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 108
    sput-object v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 109
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {v2, v4}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 111
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 112
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_1a

    .line 113
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    :cond_1a
    :goto_c
    monitor-exit v1

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 115
    :cond_1b
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 116
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 117
    monitor-enter v1

    .line 118
    :try_start_5
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 119
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_1c

    .line 120
    monitor-exit v1

    goto/16 :goto_f

    .line 121
    :cond_1c
    :try_start_6
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setPauseTime(Ljava/lang/Long;)V

    .line 122
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    .line 123
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 125
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_1d

    .line 127
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 128
    :cond_1d
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 129
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v0, :cond_1e

    .line 130
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    :cond_1e
    monitor-exit v1

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_1f
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 133
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    .line 134
    :cond_20
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 135
    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 136
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 137
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 138
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 139
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    .line 140
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_d

    :cond_21
    move-object v3, v9

    .line 141
    :goto_d
    new-instance v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 142
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v5

    .line 143
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result v7

    if-eqz v7, :cond_22

    sget-object v7, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    goto :goto_e

    :cond_22
    sget-object v7, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    :goto_e
    invoke-direct {v4, v5, v6, v3, v7}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    .line 144
    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 145
    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v3, v5, v9}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 147
    sget-object v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v3}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    .line 148
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 149
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 150
    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 151
    invoke-virtual {v4, v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 152
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 153
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 154
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 155
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 156
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    .line 157
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    .line 158
    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v5}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$ReadPixelsCallback;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 159
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 160
    :cond_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {v4, v3, v6}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/settings/CameraType;Z)V

    .line 161
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 162
    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v3, v5}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 163
    :cond_25
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 164
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 165
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 166
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 167
    :cond_26
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 168
    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 169
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 170
    monitor-enter v2

    .line 171
    :try_start_7
    invoke-virtual {v2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 172
    monitor-exit v2

    :cond_27
    :goto_f
    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1
.end method

.method public unloadTextures()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
