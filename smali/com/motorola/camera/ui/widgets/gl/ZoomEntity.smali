.class public abstract Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.super Ljava/lang/Object;
.source "ZoomEntity.java"


# instance fields
.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mEnabled:Z

.field public final mIsCliDisplay:Z

.field public mJsonConfigSegments:[F

.field public mLimited:Z

.field public mZoomRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mZoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/Range;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 9
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 10
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    .line 11
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    .line 14
    :cond_0
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingManualX:[F

    if-eqz p1, :cond_1

    .line 15
    array-length p1, p1

    const/4 p2, 0x2

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setupZoomConfig()V

    return-void
.end method


# virtual methods
.method public getMinZoomX()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public abstract setVideoRecording(Z)V
.end method

.method public abstract setupZoomConfig()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ZoomEntity{mZoomSegment="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomRatioRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLimited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
