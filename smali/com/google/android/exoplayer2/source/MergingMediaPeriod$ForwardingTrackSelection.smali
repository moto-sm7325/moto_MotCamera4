.class public final Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForwardingTrackSelection"
.end annotation


# instance fields
.field public final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->disable()V

    return-void
.end method

.method public enable()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->enable()V

    return-void
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getIndexInTrackGroup(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result p0

    return p0
.end method

.method public getSelectedFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object p0
.end method

.method public indexOf(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result p0

    return p0
.end method

.method public onDiscontinuity()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onDiscontinuity()V

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    return-void
.end method

.method public onRebuffer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onRebuffer()V

    return-void
.end method
