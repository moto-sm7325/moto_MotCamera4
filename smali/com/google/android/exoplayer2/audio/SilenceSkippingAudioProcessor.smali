.class public final Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "SilenceSkippingAudioProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method
