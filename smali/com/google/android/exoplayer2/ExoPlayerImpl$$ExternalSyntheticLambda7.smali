.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem;

    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method
