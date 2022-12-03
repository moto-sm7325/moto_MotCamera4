.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$ReadPixelsCallback;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/Player$PositionInfo;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 2
    invoke-interface {p1, v0, v2, p0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method
