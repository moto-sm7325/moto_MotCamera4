.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:F

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method
