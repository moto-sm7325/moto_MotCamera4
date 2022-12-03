.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# static fields
.field public static final DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;


# instance fields
.field public final allowAudioMixedChannelCountAdaptiveness:Z

.field public final allowAudioMixedDecoderSupportAdaptiveness:Z

.field public final allowAudioMixedMimeTypeAdaptiveness:Z

.field public final allowAudioMixedSampleRateAdaptiveness:Z

.field public final allowMultipleAdaptiveSelections:Z

.field public final allowVideoMixedDecoderSupportAdaptiveness:Z

.field public final allowVideoMixedMimeTypeAdaptiveness:Z

.field public final allowVideoNonSeamlessAdaptiveness:Z

.field public final disabledTextTrackSelectionFlags:I

.field public final exceedAudioConstraintsIfNecessary:Z

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field public final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field public final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final tunnelingEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)V

    .line 2
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 4
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 6
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 7
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 8
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 9
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 10
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    .line 11
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 12
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 13
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 14
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 15
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 16
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 17
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 18
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 19
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 20
    iget p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    .line 21
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    .line 22
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 23
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 24
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    .line 25
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    .line 26
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    .line 27
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 28
    iget-object p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 29
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 30
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_d

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    .line 6
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v3, v2, :cond_6

    :cond_5
    :goto_3
    move p0, v1

    goto :goto_7

    :cond_6
    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_c

    .line 10
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 11
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 12
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    .line 13
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v7, v6, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 16
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_9
    :goto_5
    move v4, v1

    goto :goto_6

    :cond_a
    move v4, v0

    :goto_6
    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move p0, v0

    :goto_7
    if-eqz p0, :cond_d

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    return v0

    :cond_e
    :goto_9
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 10
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 11
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 12
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 14
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3e9

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ea

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f7

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3eb

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ec

    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ed

    .line 14
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ee

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f8

    .line 18
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ef

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3f0

    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f1

    .line 24
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f2

    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 31
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 32
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 33
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v10, :cond_0

    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v4, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/16 v7, 0x3f3

    .line 38
    invoke-static {v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 39
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v7, 0x3f4

    .line 40
    invoke-static {v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    .line 42
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v7, 0x3f5

    .line 43
    invoke-static {v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    new-instance v8, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/util/SparseArray;-><init>(I)V

    move v9, v5

    .line 45
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 46
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/Bundleable;

    invoke-interface {v11}, Lcom/google/android/exoplayer2/Bundleable;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x3f6

    .line 48
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 50
    :goto_3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_4

    .line 51
    invoke-virtual {p0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
