.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Format$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/Format;


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field public hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/Format$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 8
    iget p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 9
    iput p2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 10
    iget p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 11
    iput p2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 12
    iget p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 13
    iput p2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move p2, v0

    .line 16
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 17
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 19
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 20
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 21
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 23
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 25
    iget p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 26
    iput p2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 27
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    if-nez p2, :cond_1

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 29
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 30
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 31
    iget-wide v2, p1, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 32
    iput-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 33
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 34
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 35
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 36
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 37
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 38
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 39
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 40
    :cond_2
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 41
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-nez v3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    :cond_3
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 43
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 44
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 45
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 46
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 47
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 48
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 49
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 50
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 51
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 52
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 53
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 54
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 55
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    if-ne v0, v1, :cond_4

    move v0, v2

    .line 56
    :cond_4
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 57
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    .line 58
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 59
    iget v0, p1, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 60
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 61
    iget p1, p1, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    goto :goto_1

    .line 63
    :cond_6
    iput p1, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    :goto_1
    return-void
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static keyForInitializationData(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 2
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "_"

    invoke-static {v1, v0, v2, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/Format$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 14
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 15
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 16
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_7

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 19
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    .line 29
    :cond_7
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    return p0
.end method

.method public initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x5

    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    .line 8
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x7

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v2, 0x9

    .line 11
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 12
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xe

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xf

    .line 18
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x11

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x12

    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x14

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0x15

    .line 24
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x16

    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toNullableBundle(Lcom/google/android/exoplayer2/Bundleable;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v1, 0x17

    .line 26
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x19

    .line 28
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1b

    .line 30
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    .line 32
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v9, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v10, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/16 v11, 0x68

    invoke-static {v0, v11}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v1, v11}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v2, v11}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v3, v11}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v4, v11}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v6, v11}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "Format("

    const-string v13, ", "

    invoke-static {v11, v12, v0, v13, v1}, Lan$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v13, v2, v13, v3}, Landroidx/room/InvalidationTracker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
