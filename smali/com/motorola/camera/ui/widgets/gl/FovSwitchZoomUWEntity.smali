.class public Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "FovSwitchZoomUWEntity.java"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    return-void
.end method


# virtual methods
.method public setVideoRecording(Z)V
    .locals 0

    return-void
.end method

.method public setupZoomConfig()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    return-void
.end method
